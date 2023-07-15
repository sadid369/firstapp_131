import 'package:firstapp_131/animated_container1.dart';
import 'package:firstapp_131/animation_builder_exp.dart';
import 'package:firstapp_131/animation_controller_exp.dart';
import 'package:firstapp_131/bmi.dart';
import 'package:firstapp_131/button.dart';
import 'package:firstapp_131/calculator_ui.dart';
import 'package:firstapp_131/calulator_ui_1.dart';
import 'package:firstapp_131/colum_row.dart';
import 'package:firstapp_131/custom_widget.dart';
import 'package:firstapp_131/expanded.dart';
import 'package:firstapp_131/first_page.dart';
import 'package:firstapp_131/first_page1.dart';
import 'package:firstapp_131/images.dart';
import 'package:firstapp_131/list_view.dart';
import 'package:firstapp_131/lottie_page.dart';
import 'package:firstapp_131/page_transiction_exp.dart';
import 'package:firstapp_131/rive_animation_page.dart';
import 'package:firstapp_131/shrink_warp.dart';
import 'package:firstapp_131/splash_page.dart';
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
      home: const RiveAnimationPage(),
    );
  }
}
