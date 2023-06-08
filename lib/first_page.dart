import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Center(child: Text('Hellommm')),
          decoration: BoxDecoration(
            color: Color(0xFFECDC00),
            borderRadius: BorderRadius.circular(15.0),
            // border: Border.all(
            //   color: Color(0x8CB92929),
            //   width: 34,
            //   strokeAlign: BorderSide.strokeAlignCenter,
            // ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 5,
                spreadRadius: 1,
                offset: const Offset(0, 5),
              ),
              BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(0, -5),
              ),
              BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(-5, 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
