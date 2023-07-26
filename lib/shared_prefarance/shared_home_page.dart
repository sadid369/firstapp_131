import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHomePage extends StatefulWidget {
  const SharedHomePage({Key? key}) : super(key: key);

  @override
  _SharedHomePageState createState() => _SharedHomePageState();
}

class _SharedHomePageState extends State<SharedHomePage> {
  int? count;
  @override
  void initState() {
    super.initState();
    countAppUse();
  }

  void countAppUse() async {
    var countPref = await SharedPreferences.getInstance();
    count = countPref.getInt('count') ?? 1;
    countPref.setInt("count", count! + 1);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.primaries[Random().nextInt(18)],
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        child: Center(
          child: Text("$count"),
        ),
      ),
    );
  }
}
