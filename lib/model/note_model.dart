// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firstapp_131/app_database.dart';

class NoteModel {
  final int? note_id;
  final String title;
  final String desc;
  NoteModel({
    this.note_id,
    required this.title,
    required this.desc,
  });
  //Creating a note from map data
  factory NoteModel.fromMap(Map<String, dynamic> map) {
    return NoteModel(
      note_id: map[AppDatabase.NOTE_COLOUM_ID],
      title: map[AppDatabase.NOTE_COLOUM_TITLE],
      desc: map[AppDatabase.NOTE_COLOUM_DESC],
    );
  }
  // Creating a map data from note model
  Map<String, dynamic> toMap() {
    return {
      AppDatabase.NOTE_COLOUM_ID: note_id,
      AppDatabase.NOTE_COLOUM_TITLE: title,
      AppDatabase.NOTE_COLOUM_DESC: desc,
    };
  }
}
