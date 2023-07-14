import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottiePage extends StatefulWidget {
  const LottiePage({Key? key}) : super(key: key);

  @override
  _LottiePageState createState() => _LottiePageState();
}

class _LottiePageState extends State<LottiePage> with TickerProviderStateMixin {
  late AnimationController _mController;
  @override
  void initState() {
    super.initState();
    _mController = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottie Animation'),
      ),
      body: Column(
        children: [
          SizedBox(
              height: 300,
              width: 400,
              child: Lottie.asset(
                'assets/lottie/confirm_animation.json',
                controller: _mController,
                onLoaded: (composition) {
                  _mController.duration = composition.duration;
                },
              )),
          ElevatedButton(
            onPressed: () {
              if (_mController.isAnimating) {
                _mController.stop();
              } else {
                _mController.repeat(reverse: true);
              }
              setState(() {});
            },
            child: Text(_mController.isAnimating ? 'Playing' : "Play"),
          )
        ],
      ),
    );
  }
}
