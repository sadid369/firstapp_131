import 'package:flutter/material.dart';

class ShrinkWarp extends StatefulWidget {
  const ShrinkWarp({Key? key}) : super(key: key);

  @override
  _ShrinkWarpState createState() => _ShrinkWarpState();
}

class _ShrinkWarpState extends State<ShrinkWarp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (c, i) => Container(
                margin: EdgeInsets.all(8),
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (c, i) => Container(
                margin: EdgeInsets.all(8),
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
