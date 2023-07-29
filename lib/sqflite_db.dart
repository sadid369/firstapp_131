import 'package:firstapp_131/app_database.dart';
import 'package:flutter/material.dart';

class SqfliteDb extends StatefulWidget {
  const SqfliteDb({Key? key}) : super(key: key);

  @override
  _SqfliteDbState createState() => _SqfliteDbState();
}

class _SqfliteDbState extends State<SqfliteDb> {
  late AppDatabase myDB;
  List<Map<String, dynamic>> arrNotes = [];
  @override
  void initState() {
    super.initState();
    myDB = AppDatabase.db;
    addNotes();
  }

  void addNotes() async {
    bool isNoteCreated = await myDB.addNote("Flutter", "new flutter note");
    if (isNoteCreated) {
      arrNotes = await myDB.fetchAllNotes();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sqflite'),
        ),
        body: ListView.builder(
          itemCount: arrNotes.length,
          itemBuilder: (_, index) {
            return ListTile(
              title: Text('${arrNotes[index]['title']}'),
              subtitle: Text('${arrNotes[index]['desc']}'),
            );
          },
        ));
  }
}
