import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefarceExp extends StatefulWidget {
  const SharedPrefarceExp({Key? key}) : super(key: key);

  @override
  _SharedPrefarceExpState createState() => _SharedPrefarceExpState();
}

class _SharedPrefarceExpState extends State<SharedPrefarceExp> {
  var _controller = TextEditingController();
  String? name;
  @override
  void initState() {
    super.initState();
    getNameFromPref();
  }

  void getNameFromPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    name = pref.getString("Name");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shared_preferences'),
      ),
      body: Column(children: [
        SizedBox(
          height: 200,
        ),
        Text("Name saved: ${name ?? "Default Name"}"),
        TextField(
          controller: _controller,
        ),
        ElevatedButton(
            onPressed: () async {
              SharedPreferences pref = await SharedPreferences.getInstance();
              pref.setString("Name", _controller.text.toString());
              getNameFromPref();
            },
            child: Text('Save'))
      ]),
    );
  }
}
