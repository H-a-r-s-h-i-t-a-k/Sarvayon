// import 'package:flutter/cupertino.dart';
// import 'package:rive/rive.dart';

// class Anim1button extends StatelessWidget {
//   const Anim1button({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 64,
//       width: 260,
//       child: Stack(
//         children: [
//           RiveAnimation.asset(
//             "asset/rive_assets/button.riv",
//           ),
//           Positioned.fill(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
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
