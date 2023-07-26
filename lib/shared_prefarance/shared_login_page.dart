import 'package:firstapp_131/shared_prefarance/shared_home_page.dart';
import 'package:firstapp_131/shared_prefarance/shared_splash_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLoginPage extends StatefulWidget {
  const SharedLoginPage({Key? key}) : super(key: key);

  @override
  _SharedLoginPageState createState() => _SharedLoginPageState();
}

class _SharedLoginPageState extends State<SharedLoginPage> {
  var _emailControoler = TextEditingController();
  var _passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    // countAppUse();
  }

  // void countAppUse() async {
  //   var count = await SharedPreferences.getInstance();
  //   var counts = count.getInt('count') ?? 1;
  //   count.setInt("count", counts + 1);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text('Welcome Back'),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _emailControoler,
            decoration: InputDecoration(
              hintText: 'Enter Email',
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              hintText: 'Enter Password',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 11,
          ),
          ElevatedButton(
            onPressed: () async {
              var pref = await SharedPreferences.getInstance();
              pref.setBool(SharedSplashPage.KEY_IS_LOGGED_IN, true);
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => SharedHomePage()));
            },
            child: Text('Login'),
          )
        ],
      ),
    );
  }
}
