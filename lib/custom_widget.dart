import 'dart:async';

import 'package:firstapp_131/custom_button.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatefulWidget {
  const CustomWidget({super.key});

  @override
  State<CustomWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom'),
      ),
      body: Column(
        children: [
          CustomButton(
              title: 'Play',
              mWidth: 200,
              mColor: Colors.green,
              mBorderRadius: 5,
              mIcon: Icons.wallet,
              onTap: isLoading == false
                  ? () {
                      setState(() {
                        isLoading = true;
                      });
                      Timer(Duration(seconds: 3), () {
                        setState(() {
                          isLoading = false;
                        });
                      });
                    }
                  : null),
          CustomButton(
            title: 'Login',
            // mWidth: 400,
            mIcon: Icons.login,
            onTap: () {
              print('login');
            },
          ),
        ],
      ),
    );
  }
}
