import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              // width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  width: 100,
                  child: Row(
                    children: [Icon(Icons.play_arrow_outlined), Text('Tap ME')],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  shadowColor: Colors.amber,
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  elevation: 11,
                  maximumSize: Size(400, 50),
                  minimumSize: Size(200, 50),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: OutlinedButton(
                onPressed: () {},
                child: Text('Tap ME'),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade200,
                  elevation: 15,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Tap ME',
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
