import 'package:firstapp_131/animated_container1.dart';
import 'package:firstapp_131/animation_builder_exp.dart';
import 'package:firstapp_131/animation_controller_exp.dart';
import 'package:firstapp_131/bmi.dart';
import 'package:firstapp_131/button.dart';
import 'package:firstapp_131/calculator_ui.dart';
import 'package:firstapp_131/calulator_ui_1.dart';
import 'package:firstapp_131/colum_row.dart';
import 'package:firstapp_131/counter_provider.dart';
import 'package:firstapp_131/cubit/counter_cubit.dart';
import 'package:firstapp_131/cubit/cubit_page.dart';
import 'package:firstapp_131/custom_widget.dart';
import 'package:firstapp_131/expanded.dart';
import 'package:firstapp_131/first_page.dart';
import 'package:firstapp_131/first_page1.dart';
import 'package:firstapp_131/images.dart';
import 'package:firstapp_131/list_view.dart';
import 'package:firstapp_131/login_with_sharedPref.dart';
import 'package:firstapp_131/lottie_page.dart';
import 'package:firstapp_131/note_provider/note_provider.dart';
import 'package:firstapp_131/page_transiction_exp.dart';
import 'package:firstapp_131/provider_expample.dart';
import 'package:firstapp_131/rive_animation_page.dart';
import 'package:firstapp_131/shared_prefarance/shared_splash_page.dart';
import 'package:firstapp_131/shared_prefarce_exp.dart';
import 'package:firstapp_131/shrink_warp.dart';
import 'package:firstapp_131/sqflite_db.dart';

import 'package:firstapp_131/stack_widget.dart';
import 'package:firstapp_131/text_fiels.dart';
import 'package:firstapp_131/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => CounterCubit(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WsCube Tech',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CubitPage(),
    );
  }
}
