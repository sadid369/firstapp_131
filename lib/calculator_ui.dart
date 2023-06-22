import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

class CalculatorUI extends StatelessWidget {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  num sum = 0.0;
  List<String> symbolList = ['+', '-', '/', '*'];
  var symbol = '';
  // var isSelected = false;
  void calculate() {
    if (symbol == symbolList[0]) {
      sum = int.parse(no1Controller.value.text.toString()) +
          int.parse(no2Controller.value.text.toString());
    } else if (symbol == symbolList[1]) {
      sum = int.parse(no1Controller.value.text.toString()) -
          int.parse(no2Controller.value.text.toString());
    } else if (symbol == symbolList[2]) {
      sum = int.parse(no1Controller.value.text.toString()) /
          int.parse(no2Controller.value.text.toString());
    } else if (symbol == symbolList[3]) {
      sum = int.parse(no1Controller.value.text.toString()) *
          int.parse(no2Controller.value.text.toString());
    }

    no1Controller.clear();
    no2Controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
      backgroundColor: Color(0xffF5F3F4),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
              controller: no1Controller,
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
              controller: no2Controller,
            ),
            StatefulBuilder(builder: (ctx, setSate) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            symbol = symbolList[0];

                            setSate(() {});
                          },
                          child: Chip(
                              backgroundColor: symbol == symbolList[0]
                                  ? Colors.amber
                                  : Colors.grey,
                              label: Text('${symbolList[0]}'))),
                      InkWell(
                          onTap: () {
                            symbol = symbolList[1];

                            setSate(() {});
                          },
                          child: Chip(
                              backgroundColor: symbol == symbolList[1]
                                  ? Colors.amber
                                  : Colors.grey,
                              label: Text('${symbolList[1]}'))),
                      InkWell(
                          onTap: () {
                            symbol = symbolList[2];

                            setSate(() {});
                          },
                          child: Chip(
                              backgroundColor: symbol == symbolList[2]
                                  ? Colors.amber
                                  : Colors.grey,
                              label: Text('${symbolList[2]}'))),
                      InkWell(
                          onTap: () {
                            symbol = symbolList[3];

                            setSate(() {});
                          },
                          child: Chip(
                              backgroundColor: symbol == symbolList[3]
                                  ? Colors.amber
                                  : Colors.grey,
                              label: Text('${symbolList[3]}'))),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      calculate();
                      setSate(() {});
                    },
                    child: Text('Calculate'),
                  ),
                  Text('Result: ${sum.ceil()}'),
                ],
              );
            })
          ],
        ),
      )),
    );
  }
}
