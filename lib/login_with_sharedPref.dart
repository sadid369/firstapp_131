import 'package:flutter/material.dart';

class LoginWithSharedPref extends StatefulWidget {
  const LoginWithSharedPref({Key? key}) : super(key: key);

  @override
  _LoginWithSharedPrefState createState() => _LoginWithSharedPrefState();
}

class _LoginWithSharedPrefState extends State<LoginWithSharedPref> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login With Sharedpref'),
      ),
      body: Container(),
    );
  }
}
