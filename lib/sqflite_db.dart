import 'package:firstapp_131/app_database.dart';
import 'package:firstapp_131/model/note_model.dart';
import 'package:flutter/material.dart';

class SqfliteDb extends StatefulWidget {
  const SqfliteDb({Key? key}) : super(key: key);

  @override
  _SqfliteDbState createState() => _SqfliteDbState();
}

class _SqfliteDbState extends State<SqfliteDb> {
  late AppDatabase myDB;

  List<NoteModel> arrNotes = [];
  var titleController = TextEditingController();
  var descController = TextEditingController();
  @override
  void initState() {
    super.initState();
    myDB = AppDatabase.db;
    getNotes();
  }

  void addNotes(String title, String desc) async {
    bool isNoteCreated =
        await myDB.addNote(NoteModel(title: title, desc: desc));
    if (isNoteCreated) {
      arrNotes = await myDB.fetchAllNotes();
      setState(() {});
    }
  }

  void getNotes() async {
    arrNotes = await myDB.fetchAllNotes();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return arrNotes == null
        ? Center(
            child: Text('No Notes'),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text('Sqflite'),
            ),
            body: ListView.builder(
              itemCount: arrNotes.length,
              itemBuilder: (_, index) {
                return InkWell(
                  onTap: () {
                    titleController.text = arrNotes[index].title;
                    descController.text = arrNotes[index].desc;
                    showModalBottomSheet(
                      // isDismissible: false,
                      // isDismissible: true,

                      context: context,
                      builder: (context) {
                        return Container(
                          height: 400,
                          child: Column(
                            children: [
                              Text(
                                'Add Notes',
                                style: TextStyle(fontSize: 21),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                controller: titleController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(21.0)),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                controller: descController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(21.0)),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  var title = titleController.text.toString();
                                  var desc = descController.text.toString();
                                  var isUpdatde = await myDB.updateNote(
                                      NoteModel(
                                          note_id: arrNotes[index].note_id,
                                          title: title,
                                          desc: desc));

                                  titleController.clear();
                                  descController.clear();
                                  getNotes();

                                  Navigator.of(context).pop();
                                },
                                child: Text('Update'),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: ListTile(
                    title: Text(arrNotes[index].title),
                    subtitle: Text(arrNotes[index].desc),
                    trailing: InkWell(
                        onTap: () async {
                          await myDB.deleteNote(
                            arrNotes[index].note_id!,
                          );
                          getNotes();
                        },
                        child: Icon(Icons.delete)),
                  ),
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                titleController.text = "";
                descController.text = "";
                showModalBottomSheet(
                  isDismissible: true,
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 400,
                      child: Column(
                        children: [
                          Text(
                            'Add Notes',
                            style: TextStyle(fontSize: 21),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: titleController,
                            decoration: InputDecoration(
                              hintText: 'Enter Title',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21.0)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: descController,
                            decoration: InputDecoration(
                              hintText: "Enter Description",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21.0)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              var title = titleController.text.toString();
                              var desc = descController.text.toString();
                              addNotes(title, desc);
                              titleController.clear();
                              descController.clear();
                              Navigator.of(context).pop();
                            },
                            child: Text('Add'),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              child: Icon(
                Icons.add,
              ),
            ),
          );
  }
}
