import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final name;
  SecondPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page '),
      ),
      body: Center(child: Text('Welcome $name')),
    );
  }
}
