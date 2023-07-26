import 'package:flutter/material.dart';

class SharedSignupPage extends StatefulWidget {
  const SharedSignupPage({Key? key}) : super(key: key);

  @override
  _SharedSignupPageState createState() => _SharedSignupPageState();
}

class _SharedSignupPageState extends State<SharedSignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup Page'),
      ),
      body: Container(),
    );
  }
}
