import 'dart:io';

import 'package:firstapp_131/model/note_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  //for singleton database class
  AppDatabase._();

  static final AppDatabase db = AppDatabase._();
  Database? _database;
  static final NOTE_TABLE = "note";
  static final NOTE_COLOUM_ID = "note_id";
  static final NOTE_COLOUM_TITLE = "title";
  static final NOTE_COLOUM_DESC = "desc";

  Future<Database> getDB() async {
    if (_database != null) {
      return _database!;
    } else {
      return await initBD();
    }
  }

  Future<bool> addNote(NoteModel note) async {
    var db = await getDB();
    int rowsEffect = await db.insert(NOTE_TABLE, note.toMap());
    return rowsEffect > 0;
  }

  Future<List<NoteModel>> fetchAllNotes() async {
    var db = await getDB();
    List<NoteModel> listNotes = [];
    List<Map<String, dynamic>> notes = await db.query(NOTE_TABLE);

    for (Map<String, dynamic> note in notes) {
      NoteModel model = NoteModel.fromMap(note);
      listNotes.add(model);
    }

    return listNotes;
  }

  Future<Database> initBD() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    var dbPath = join(documentDirectory.path, "noteDB.db");
    return openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) {
        //create table here
        db.execute(
            "Create table $NOTE_TABLE ( $NOTE_COLOUM_ID integer primary key autoincrement, $NOTE_COLOUM_TITLE text, $NOTE_COLOUM_DESC text )");
      },
    );
  }

  Future<bool> updateNote(NoteModel note) async {
    var db = await getDB();
    var count = await db.update(
      NOTE_TABLE,
      note.toMap(),
      where: "$NOTE_COLOUM_ID =${note.note_id}",
    );
    return count > 0;
  }

  Future<bool> deleteNote(int id) async {
    var db = await getDB();
    var count = await db
        .delete(NOTE_TABLE, where: "$NOTE_COLOUM_ID = ?", whereArgs: ["$id"]);
    return count > 0;
  }
}
