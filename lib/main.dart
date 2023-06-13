import 'package:firstapp_131/colum_row.dart';
import 'package:firstapp_131/first_page.dart';
import 'package:firstapp_131/images.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const ColumRow(),
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
