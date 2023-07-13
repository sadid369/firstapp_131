import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottiePage extends StatefulWidget {
  const LottiePage({Key? key}) : super(key: key);

  @override
  _LottiePageState createState() => _LottiePageState();
}

class _LottiePageState extends State<LottiePage> {
  var isVisisble = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottie Animation'),
      ),
      body: Center(
          child: InkWell(
        onTap: () {
          isVisisble = !isVisisble;
          setState(() {});
        },
        child: SizedBox(
            height: 200,
            width: 200,
            child: Visibility(
                visible: isVisisble,
                child: Lottie.asset('assets/lottie/confirm_animation.json'))),
      )),
    );
  }
}
