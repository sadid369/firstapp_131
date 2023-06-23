import 'package:firstapp_131/bmi.dart';
import 'package:firstapp_131/button.dart';
import 'package:firstapp_131/calculator_ui.dart';
import 'package:firstapp_131/calulator_ui_1.dart';
import 'package:firstapp_131/colum_row.dart';
import 'package:firstapp_131/expanded.dart';
import 'package:firstapp_131/first_page.dart';
import 'package:firstapp_131/images.dart';
import 'package:firstapp_131/stack_widget.dart';
import 'package:firstapp_131/text_fiels.dart';
import 'package:firstapp_131/ui.dart';
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
      home: const Bmi(),
    );
  }
}
