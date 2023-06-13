import 'package:flutter/material.dart';

class ColumRow extends StatelessWidget {
  const ColumRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 600,
          width: 500,
          color: Colors.black,
          child: Wrap(
            spacing: 50,
            runSpacing: 50,
            // crossAxisAlignment: WrapCrossAlignment.v,
            alignment: WrapAlignment.spaceEvenly,
            children: [
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.grey,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.grey,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.grey,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.grey,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.yellow,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.amber,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.grey,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.yellow,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.amber,
              ),
              Container(
                // margin: EdgeInsets.all(8),
                width: 50,
                height: 50,
                color: Colors.amberAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
