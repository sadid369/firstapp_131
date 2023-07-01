import 'package:firstapp_131/second_apge.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var nameController = TextEditingController();
  @override
  void deactivate() {
    super.deactivate();
    nameController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Home Page',
            style: TextStyle(color: Colors.blue.shade300),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Home',
                  style: TextStyle(fontSize: 66, color: Colors.blue.shade300),
                ),
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  label: const Text('Name'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondPage(
                                name: nameController.text,
                              )));
                },
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ],
          ),
        ));
  }
}
