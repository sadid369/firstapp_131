import 'package:flutter/material.dart';

class AnimationControllerExp extends StatefulWidget {
  const AnimationControllerExp({Key? key}) : super(key: key);

  @override
  State<AnimationControllerExp> createState() => _AnimationControllerExpState();
}

class _AnimationControllerExpState extends State<AnimationControllerExp>
    with TickerProviderStateMixin {
  late AnimationController mController;
  late AnimationController mSecController;
  late Animation tweenAnim;
  late Animation colorAnim;
  late Animation alineAnim;
  late Animation<Size?> sizeAnim;

  @override
  void initState() {
    super.initState();
    mController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    mSecController =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..addListener(() {
            setState(() {});
          });

    tweenAnim = Tween(
      begin: 11.0,
      end: 60.0,
    ).animate(CurvedAnimation(
      parent: mSecController,
      curve: Curves.bounceInOut,
    ));
    colorAnim = ColorTween(begin: Colors.amber, end: Colors.blue)
        .animate(mSecController);
    alineAnim =
        AlignmentTween(begin: Alignment.bottomLeft, end: Alignment.topRight)
            .animate(mController);
    sizeAnim = SizeTween(begin: Size(200, 100), end: Size(100, 200))
        .animate(mController);
    mController.addListener(() {
      mController.addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            mSecController.forward();
          }
        },
      );
      setState(() {});
    });
    // mController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: colorAnim.value,
      appBar: AppBar(
        title: const Text('Controller'),
      ),
      body: Align(
        alignment: alineAnim.value,
        child: Container(
          width: sizeAnim.value!.width,
          height: sizeAnim.value!.height,
          child: Icon(Icons.account_balance_outlined, size: tweenAnim.value),
          // width: 300 * mController.value,
          // height: 300 * mController.value,
          decoration: BoxDecoration(
              color: colorAnim.value, borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
