import 'package:firstapp_131/first_page.dart';
import 'package:firstapp_131/home_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class PageTransictionExp extends StatelessWidget {
  const PageTransictionExp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Transition'),
      ),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: HomePage(),
                      type: PageTransitionType.rightToLeftJoined,
                      duration: Duration(seconds: 3),
                      curve: Curves.bounceInOut,
                      childCurrent: PageTransictionExp()));
            },
            child: Text('Tap Me')),
      ]),
    );
  }
}
