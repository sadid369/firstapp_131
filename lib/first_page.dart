import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Hello, Welcome to Flutter"),
              TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ],
          ),
        ));
  }
}
