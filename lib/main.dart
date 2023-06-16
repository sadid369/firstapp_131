import 'package:firstapp_131/button.dart';
import 'package:firstapp_131/colum_row.dart';
import 'package:firstapp_131/first_page.dart';
import 'package:firstapp_131/images.dart';
import 'package:firstapp_131/text_fiels.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Button(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.blue,
      child: Center(
        child: Container(
          color: Colors.amber,
          width: 500,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Hello World',
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 100,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ),
    ));
  }
}
