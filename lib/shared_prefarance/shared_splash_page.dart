import 'dart:async';

import 'package:firstapp_131/shared_prefarance/shared_home_page.dart';
import 'package:firstapp_131/shared_prefarance/shared_login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedSplashPage extends StatefulWidget {
  static String KEY_IS_LOGGED_IN = "IsLoggedIn";
  const SharedSplashPage({Key? key}) : super(key: key);

  @override
  _SharedSplashPageState createState() => _SharedSplashPageState();
}

class _SharedSplashPageState extends State<SharedSplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () async {
      var pref = await SharedPreferences.getInstance();
      var check = pref.getBool(SharedSplashPage.KEY_IS_LOGGED_IN) ?? false;

      if (check) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const SharedHomePage(),
          ),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const SharedLoginPage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        child: Center(
          child: Icon(
            Icons.account_balance_outlined,
            size: 60,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
