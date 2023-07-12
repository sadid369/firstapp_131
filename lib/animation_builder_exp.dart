import 'package:flutter/material.dart';

class AnimationBuilderExp extends StatefulWidget {
  const AnimationBuilderExp({Key? key}) : super(key: key);

  @override
  _AnimationBuilderExpState createState() => _AnimationBuilderExpState();
}

class _AnimationBuilderExpState extends State<AnimationBuilderExp>
    with TickerProviderStateMixin {
  late AnimationController mControllerOne;
  late AnimationController mController;
  late AnimationController mSecController;
  late Animation dropDownTween;

  @override
  void initState() {
    super.initState();
    mControllerOne =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..addStatusListener((status) {
            mController = mControllerOne;
            if (status == AnimationStatus.completed) {
              dropDownTween =
                  Tween(begin: 0.0, end: 400.0).animate(mSecController);
            }
          });
    mSecController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    dropDownTween = Tween(begin: 0.0, end: 400.0).animate(mController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Transform'),
      ),
      body: Center(
          child: AnimatedBuilder(
        animation: mController,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
        builder: (context, childToAnimated) {
          return Transform.translate(
            offset:
                Offset(dropDownTween.value / 2, -1.0 * dropDownTween.value / 2),
            child: childToAnimated,
          );
        },
      )),
    );
  }
}
