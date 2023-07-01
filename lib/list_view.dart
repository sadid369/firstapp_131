import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  List<Map<String, dynamic>> listColours = [
    {"color": Colors.blue, "name": "Blue"},
    {"color": Colors.green, "name": "Green"},
    {"color": Colors.orange, "name": "Orange"},
    {"color": Colors.red, "name": "Red"},
    {"color": Colors.yellow, "name": "Yellow"},
    {"color": Colors.grey, "name": "Grey"},
    {"color": Colors.blue, "name": "Blue"},
    {"color": Colors.green, "name": "Green"},
    {"color": Colors.orange, "name": "Orange"},
    {"color": Colors.red, "name": "Red"},
    {"color": Colors.yellow, "name": "Yellow"},
    {"color": Colors.grey, "name": "Grey"},
  ].reversed.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: listColours.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(11),
          height: 100,
          color: listColours[index]['color'] as Color,
          child: Center(
              child: Text(
            '${index}',
            style: TextStyle(
              fontSize: 25,
            ),
          )),
        );
      },
    ));
  }
}
