import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorUI extends StatefulWidget {
  const CalculatorUI({super.key});

  @override
  State<CalculatorUI> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
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
    return Scaffold(
      backgroundColor: Color(0xffF5F3F4),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: no1Controller,
            ),
            TextField(
              controller: no2Controller,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      symbol = symbolList[0];

                      setState(() {});
                    },
                    child: Chip(
                        backgroundColor: symbol == symbolList[0]
                            ? Colors.amber
                            : Colors.grey,
                        label: Text('${symbolList[0]}'))),
                InkWell(
                    onTap: () {
                      symbol = symbolList[1];

                      setState(() {});
                    },
                    child: Chip(
                        backgroundColor: symbol == symbolList[1]
                            ? Colors.amber
                            : Colors.grey,
                        label: Text('${symbolList[1]}'))),
                InkWell(
                    onTap: () {
                      symbol = symbolList[2];

                      setState(() {});
                    },
                    child: Chip(
                        backgroundColor: symbol == symbolList[2]
                            ? Colors.amber
                            : Colors.grey,
                        label: Text('${symbolList[2]}'))),
                InkWell(
                    onTap: () {
                      symbol = symbolList[3];

                      setState(() {});
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
                setState(() {});
              },
              child: Text('Calculate'),
            ),
            Text('Result: ${sum.ceil()}'),
          ],
        ),
      )),
    );
  }
}
