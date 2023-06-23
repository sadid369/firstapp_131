import 'dart:math';

import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  var weightController = TextEditingController();
  var heightFController = TextEditingController();
  var heightIController = TextEditingController();
  num bmi = 0;
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: const Text("Weight"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: heightFController,
              decoration: InputDecoration(
                label: const Text("Height in Foot"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: heightIController,
              decoration: InputDecoration(
                label: const Text("Height in Inches"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  var weight = int.parse(weightController.text.toString());
                  var heightF = int.parse(heightFController.text.toString());
                  var heightI = int.parse(heightIController.text.toString());
                  var heightInInch = (heightF * 12) + heightI;
                  var heightInMeter = (heightInInch / 39.37);

                  bmi = (weight / pow(heightInMeter, 2));
                  if (bmi <= 18.4) {
                    result = 'Underweight';
                  } else if (bmi > 18.5 && bmi < 24.9) {
                    result = 'Normal';
                  } else if (bmi > 25 && bmi < 39.9) {
                    result = ' Overweight';
                  } else if (bmi > 40) {
                    result = 'Obese';
                  }

                  setState(() {});
                },
                child: const Text('Calculate'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text("Your BMI Result: ${result}")
          ],
        ),
      ),
    );
  }
}
