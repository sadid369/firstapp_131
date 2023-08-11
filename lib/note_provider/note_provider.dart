import 'package:firstapp_131/app_database.dart';
import 'package:firstapp_131/model/note_model.dart';
import 'package:flutter/material.dart';

class NoteProvider extends ChangeNotifier {
  List<NoteModel> _arrNotes = [];

  AppDatabase db = AppDatabase.db;
// NoteProvider({required this.bd});

  fetchInitialNotes() async {
    _arrNotes = await db.fetchAllNotes();
    notifyListeners();
  }

// get initial notes
  List<NoteModel> getNotes() {
    return _arrNotes;
  }

  // add notes
  Future<bool> addNotes(NoteModel newNote) async {
    var check = await db.addNote(newNote);
    if (check) {
      fetchInitialNotes();
    }
    return check;
  }
}
