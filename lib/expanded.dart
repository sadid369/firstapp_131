import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              // width: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              // width: 100,
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              // width: 100,
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              // width: 100,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
