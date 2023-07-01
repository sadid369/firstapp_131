import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 66, color: Colors.blue.shade300),
        ),
      ),
    );
  }
}
