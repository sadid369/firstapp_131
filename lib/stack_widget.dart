import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amber,
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.orange,
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.indigo,
              ),
            ),
            Positioned(
              bottom: 21,
              right: 21,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 20,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
