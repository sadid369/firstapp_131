import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainer1 extends StatefulWidget {
  const AnimatedContainer1({Key? key}) : super(key: key);

  @override
  _AnimatedContainer1State createState() => _AnimatedContainer1State();
}

class _AnimatedContainer1State extends State<AnimatedContainer1> {
  var mWidth = 100.0;
  var mHeight = 100.0;
  var mColor = Colors.blue;
  var mRadious = 1.0;
  var mOpacity = 1.0;
  var mAlingment = Alignment.bottomLeft;
  var list = [
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.grey,
    Colors.yellow,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              mAlingment = mAlingment == Alignment.bottomLeft
                  ? Alignment.topRight
                  : Alignment.bottomLeft;
            });
          },
          child: AnimatedAlign(
            alignment: mAlingment,
            duration: Duration(milliseconds: 4000),
            curve: Curves.bounceOut,
            child: Container(
              child: Text('Data'),
              width: mWidth,
              height: mHeight,
              decoration: BoxDecoration(
                color: mColor,
                borderRadius: BorderRadius.circular(mRadious),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class A extends StatelessWidget {
  const A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListView.builder(
            itemBuilder: (c, i) => Container(),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
