// // ignore: must_be_immutable
// class AnimatedBtn extends StatefulWidget {
//   late RiveAnimationController _btnAnimationController;

//   AnimatedBtn({
//     Key? key,
//     // key,
//     required RiveAnimationController btnAnimationController,
//   })  : _btnAnimationController = btnAnimationController,
//         super(key: key);

//   @override
//   State<AnimatedBtn> createState() => _AnimatedBtnState();
// }
import 'package:flutter/material.dart';
import 'package:pro/constants/formmy.dart';

import 'package:rive/rive.dart';

class Animate2 extends StatefulWidget {
  const Animate2({super.key});

  @override
  State<Animate2> createState() => _Animate2State();
}

class _Animate2State extends State<Animate2> {
  SMIInput<bool>? button;
  StateMachineController getAnimController(Artboard artboard) {
    StateMachineController? controller =
        StateMachineController.fromArtboard(artboard, "subButton");
    artboard.addController(controller!);
    return controller;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 595),
      child: GestureDetector(
        onTap: () async {
          button!.value ? button!.value = false : button!.value = true;
          setState(() {});
          await Future.delayed(
            const Duration(milliseconds: 100),
          );
          setState(() {});
          // ignore: use_build_context_synchronously
          showGeneralDialog(
            barrierDismissible: true,
            barrierLabel: "Sign in",
            context: context,
            pageBuilder: (context, _, __) => Center(
              child: Container(
                height: 620,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: const Scaffold(
                  backgroundColor: Colors.transparent,
                  body: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(children: [
                      Text(
                        "Sign In ",
                        style: TextStyle(
                          fontSize: 34,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                            "A health insurance policy is primarily designed to cover you financially in case of a medical emergency caused by illnesses, accidents or hospitalization. It has long-term benefits that make taking a health insurance policy a definite goal in your annual financial plan.",
                            textAlign: TextAlign.center),
                      ),
                      Formmy()
                    ]),
                  ),
                ),
              ),
            ),
          );
        },
        child: SizedBox(
          height: 100,
          width: 560,
          child: RiveAnimation.asset(
            "asset/rive_assets/button.riv",
            fit: BoxFit.fill,
            onInit: ((artboard) {
              StateMachineController cont = getAnimController(artboard);
              cont.isActive = false;
              button = cont.findInput<bool>("clickable");
              button!.value = false;
            }),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class Formmy extends StatelessWidget {
//   const Formmy({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: Column(children: [
//         TextFormField(),
//       ]),
//     );
//   }
// }


// RiveAnimation






// 222222222222222222222222222222222222222222222222222222222222
















// // ignore: file_names
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';


// class _AnimatedBtnState extends State<AnimatedBtn> {
//   late RiveAnimationController _btnAnimationController;
//   @override
//   void initState() {
//     super.initState();
//     _btnAnimationController = OneShotAnimation(
//       "active",
//       autoplay: false,
//     );
//   }

//   // Future<void> press() async {
//   //   _btnAnimationController.isActive = true;
//   //   await Future.delayed(
//   //     const Duration(seconds: 20),
//   //   );
//   //   setState(() {});
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () async {
//         _btnAnimationController.isActive = true;
//         await Future.delayed(
//           const Duration(seconds: 20),
//         );
//         setState(() {});
//       },
//       // height: 64,
//       // width: 370,
//       child: Stack(children: [
//         RiveAnimation.asset(
//           "asset/rive_assets/button.riv",
//           fit: BoxFit.contain,
//           controllers: [_btnAnimationController],
//           // animations: [
//           //   Action(
//           //     AboutDialog(
//           //       applicationName: "hjh",
//           //     ),
//           //   )
//           // ],
//           onInit: (_) => setState(() {}),
//         ),
//         const Positioned.fill(
//           top: 15,
//           left: 34,
//           child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               // mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Icon(CupertinoIcons.arrow_right),
//                 SizedBox(
//                   // height: 40,
//                   width: 6,
//                 ),
//                 Text(
//                   "Start",
//                   style: TextStyle(
//                       // textBaseline: TextBaseline.alphabetic,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 23),
//                 ),
//               ]),
//         ),
//       ]
//           // ),
//           // ),
//           ),
//     );
//   }
// }
