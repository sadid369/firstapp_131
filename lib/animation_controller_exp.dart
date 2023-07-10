import 'package:flutter/material.dart';

class AnimationControllerExp extends StatefulWidget {
  const AnimationControllerExp({Key? key}) : super(key: key);

  @override
  State<AnimationControllerExp> createState() => _AnimationControllerExpState();
}

class _AnimationControllerExpState extends State<AnimationControllerExp>
    with SingleTickerProviderStateMixin {
  late AnimationController mController;
  late Animation tweenAnim;
  late Animation colorAnim;
  @override
  void initState() {
    super.initState();
    mController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    // var curve = CurvedAnimation(parent: mController, curve: Curves.bounceOut);
    tweenAnim = Tween(
      begin: 11.0,
      end: 20.0,
    ).animate(CurvedAnimation(
      parent: mController,
      curve: Curves.bounceInOut,
    ));
    colorAnim =
        ColorTween(begin: Colors.amber, end: Colors.blue).animate(mController);
    mController.addListener(() {
      print(mController.value);
      print(tweenAnim.value);
      setState(() {});
    });
    // mController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300 * mController.value,
              height: 300 * mController.value,
              decoration: BoxDecoration(
                  color: colorAnim.value,
                  borderRadius: BorderRadius.circular(tweenAnim.value)),
            ),
            ElevatedButton(
                onPressed: () {
                  mController.forward();
                },
                child: Text('Tap Me'))
          ],
        ),
      ),
    );
  }
}
