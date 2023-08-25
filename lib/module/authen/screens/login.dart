import 'dart:ui';

import 'package:flutter/rendering.dart';
import 'package:pro/constants/AnimatedBtn.dart';
// import 'package:rive/rive.dart';

// import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  const Authen({super.key});
  static const String routeName = "/login";
  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool isfommyDialogShown = false;
//   late RiveAnimationController _btnAnimationController;
//   bool _isokey = false;
//   @override
//   void initState() {
//     super.initState();
//     _btnAnimationController = OneShotAnimation(
//       'bounce', autoplay: false,
//       onStop: () => setState(
//         () => _isokey = false,
//       ),
//       onStart: () => setState(
//         () => _isokey = true,
//       ),

// // autoplay: false,
//     );
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // const RiveAnimation.asset(
          //   "asset/rive_assets/i1.riv",
          //   // "asset/rive_assets/button.riv",
          //   fit: BoxFit.fill,
          // ),
          Positioned(
            width: MediaQuery.of(context).size.width * 0.9,
            bottom: 20,
            height: 50,
            child: const Text(
              "Wellcome to your ",
              // style: TextStyle(
              //   fontSize: 45,
              // ),
            ),
            // child: Image.asset(
            //   "asset/doc/log.png",
            //   fit: BoxFit.cover,
            // ),
            left: 10,
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 1,
                sigmaY: 1,
              ),
              child: const SizedBox(
                height: 89,
              ),
            ),
          ),
          AnimatedPositioned(
            // top:  ? -50 : 0,
            duration: const Duration(milliseconds: 140),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
              child: Stack(
                fit: StackFit.loose,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    padding:
                        EdgeInsets.symmetric(horizontal: 24, vertical: 334),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sarvayan : Health Care ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 45,
                              fontFamily: AutofillHints.birthdayYear,
                              fontWeight: FontWeight.bold,
                              height: 1.3),
                        ),
                        SizedBox(
                          height: 34,
                        ),
                        Text(
                          "Health care, or healthcare, is the improvement of health via the prevention, diagnosis, treatment, amelioration or cure of disease, illness, injury",
                          textAlign: TextAlign.center,
                          // style: text,
                        ),
                        // SizedBox(
                        //   height: 34,
                        // ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 573, bottom: 140),
                    child: InkWell(
                      onTap: active,
                      child: Animate2(),
                      radius: 1.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // const Spacer(flex: 4),

          // Padding(
          //     padding: const EdgeInsets.only(top: 55, left: 24),
          //     child: GestureDetector(
          //       onTap: () => _isokey ? null : _btnAnimationController,
          //       child: Column(
          //         children: [
          //           RiveAnimation.asset(
          //             "asset/rive_assets/button.riv",
          //             animations: const ['idle', 'curves'],
          //             controllers: [_btnAnimationController],
          //           ),
          //         ],
          //       ),
          //     ))
          //pading
          // ),

          //   ],
          // ),
          //
          //     ),//container
          //   ),
          // ),//padinh
          // ),
          //   ],
          // ),
        ], //column
      ),
    );
  }

  void active() {
    isfommyDialogShown ? isfommyDialogShown = false : isfommyDialogShown = true;
  }
}

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
