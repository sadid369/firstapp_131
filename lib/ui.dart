import 'package:flutter/material.dart';

class UI extends StatelessWidget {
  const UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Col'),
      ),
      body: SizedBox(
        height: 400,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: 200,
              color: Colors.grey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(11),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        color: Color(0xffe6f1fa),
                      ),
                      width: 250,
                      child: Center(
                        child: const Text(
                          'Chocolate Cake',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(11),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        color: Color(0xffe6f1fa),
                      ),
                      width: 250,
                      child: Center(
                        child: const Text(
                          "um. Proident elit occaecat  incididunt labore non labore velit labore elit est ad dolore nostrud officia magna.",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(11),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        color: Color(0xffe6f1fa),
                      ),
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.star,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                          ),
                          Text(
                            "170 Reviews",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/images/cake.jpg',
              fit: BoxFit.fill,
              width: 600,
              height: 400,
            )
          ],
        ),
      ),
    );
  }
}
