import 'dart:async';

import 'package:firstapp_131/custom_button.dart';
import 'package:firstapp_131/home_page.dart';
import 'package:firstapp_131/ui_base.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatefulWidget {
  const CustomWidget({super.key});

  @override
  State<CustomWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  bool isLoading = false;
  bool isPasswordVisible = false;
  var fromKey = GlobalKey<FormState>();
  void tapMe() {
    if (fromKey.currentState!.validate()) {
      fromKey.currentState!.reset();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom'),
      ),
      body: Form(
        key: fromKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (value) {
                if (value == "") {
                  return 'Please Provide Valid Email';
                } else if (!value!.contains('@')) {
                  return 'Please Provide  Email';
                }
                return null;
              },
              decoration: UiBase.getCustomDecoration(
                hint: 'Email here',
                labelText: 'Email',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value == "") {
                  return 'Please Provide  Password';
                } else if (value!.length < 5) {
                  return "Please Provide Password With at Least 5 Charecter ";
                }
                return null;
              },
              obscureText: !isPasswordVisible,
              obscuringCharacter: '*',
              decoration: UiBase.getCustomDecoration(
                hint: 'Password',
                labelText: 'Password',
                mSuffixIcon:
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                onSuffixIconTap: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
            ),
            ElevatedButton(onPressed: tapMe, child: const Text('Tap ME')),
          ],
        ),
      ),
    );
  }
}
