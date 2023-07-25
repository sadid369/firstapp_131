import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class RiveAnimationPage extends StatefulWidget {
  const RiveAnimationPage({Key? key}) : super(key: key);

  @override
  _RiveAnimationPageState createState() => _RiveAnimationPageState();
}

class _RiveAnimationPageState extends State<RiveAnimationPage> {
  var rivePath = "assets/rive/login.riv";
  StateMachineController? machineController;
  Artboard? mainArtBoard;
  SMIInput<bool>? riveInput;

  @override
  void initState() {
    super.initState();

    rootBundle.load(rivePath).then((riveByteData) {
      var file = RiveFile.import(riveByteData);

      var artBoard = file.mainArtboard;
      machineController =
          StateMachineController.fromArtboard(artBoard, "starFav");
      if (machineController != null) {
        artBoard.addController(machineController!);
        riveInput = machineController!.findInput('check');

        mainArtBoard = artBoard;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Rive Animation'),
        ),
        body: mainArtBoard == null
            ? Container()
            : InkWell(
                onTap: () {
                  if (riveInput != null) {
                    riveInput!.value = !riveInput!.value;
                    // if (riveInput != null) {
                    //   if (riveInput!.value == false &&
                    //       riveInput!.controller.isActive == false) {
                    //     riveInput!.value = true;
                    //   } else {
                    //     riveInput!.value = false;
                    //   }
                    // }
                  }
                },
                child: Rive(artboard: mainArtBoard!)));
    // body: Container());
  }
}
