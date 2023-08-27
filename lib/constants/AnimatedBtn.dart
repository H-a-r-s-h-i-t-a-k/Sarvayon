import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pro/common/custom_textfield.dart';
// import 'package:pro/constants/formmy.dart';
import 'package:pro/constants/loginlogout.dart';

import 'package:rive/rive.dart';

import '../common/custon_button.dart';

enum Auth {
  signin,
  signup,
}

class Animate2 extends StatefulWidget {
  const Animate2({super.key});

  @override
  State<Animate2> createState() => _Animate2State();
}

class _Animate2State extends State<Animate2> {
  //initialise enum
  SMIInput<bool>? button;
  StateMachineController getAnimController(Artboard artboard) {
    StateMachineController? controller =
        StateMachineController.fromArtboard(artboard, "subButton");
    artboard.addController(controller!);
    return controller;
  }

  Auth _auth = Auth.signin;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            SizedBox(
              height: 23,
            ),
            const Text(
              "Start",
              textAlign: TextAlign.center,
            ),
            RiveAnimation.asset(
              "asset/rive_assets/button.riv",
              fit: BoxFit.fill,
              useArtboardSize: true,
              onInit: ((artboard) {
                StateMachineController cont = getAnimController(artboard);
                cont.isActive = false;
                button = cont.findInput<bool>("clickable");
                button!.value = false;
              }),
            ),
          ],
        ),

        onTap: () async {
          button!.value ? button!.value = false : button!.value = true;

          setState(() {});
          await Future.delayed(
            const Duration(milliseconds: 800),
          );
          Navigator.of(context).push(_createRoute());
          button!.value ? button!.value = false : button!.value = true;
        },

//wrong
        // Navigator.push(
        //   context,PageTransitionsTheme(builders: )
        // ),
        // Get.to(
        //   (context) => const LoginLogout(),
        //   transition: Transition.fade,
        //   duration: Duration(seconds: 1),
        // );
        //
        // //wrongggg

//           showGeneralDialog(

//             barrierDismissible: true,
//             barrierLabel: "Sign in",
//             context: context,
//             transitionBuilder: (_, animation, __, child) {
//               Tween<Offset> tween;
//               tween = Tween(begin: const Offset(0, -1), end: Offset.zero);
//               return SlideTransition(
//                 position: tween.animate(CurvedAnimation(
//                     parent: animation, curve: Curves.easeInOut)),
//                 child: child,
//               );
//             },
//             pageBuilder: (context, _, __) => Center(
//               child: Container(
//                 height: 620,
//                 margin: const EdgeInsets.symmetric(horizontal: 11),
//                 padding: const EdgeInsets.symmetric(horizontal: 36),
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   // backgroundBlendMode: BlendMode.darken,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(40),
//                   ),
//                 ),
//                 child: Scaffold(
//                   backgroundColor: const Color.fromARGB(0, 235, 92, 204),
//                   body: SingleChildScrollView(
//                     scrollDirection: Axis.vertical,
//                     // padding: EdgeInsets.only(top: 23, bottom: 2),
//                     child: Stack(
//                       clipBehavior: Clip.none,
//                       children: [
//                         Column(
//                           children: [
//                             const SizedBox(
//                               height: 13,
//                             ),
//                             ListTile(
//                               title: const Text(
//                                 "Create Account",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 24,
//                                 ),
//                               ),
//                               leading: Radio(
//                                 activeColor:
//                                     const Color.fromARGB(255, 233, 30, 165),
//                                 value: Auth.signup,
//                                 groupValue: _auth,
//                                 onChanged: (Auth? val) async {
//                                   setState(() {
//                                     _auth = val!;
//                                     button!.value
//                                         ? button!.value = false
//                                         : button!.value = true;
//                                   });
//                                 },
//                               ),
//                             ),
//                             if (_auth == Auth.signup)
//                               Container(
//                                 padding: const EdgeInsets.all(8),
//                                 child: Form(
//                                   key: _signUpFormKey,
//                                   child: Column(
//                                     children: [
//                                       CustomtextFeild(
//                                         hintText: "Name ",
//                                         controller: _nameController,
//                                         customicon: const Icon(
//                                           Icons.person,
//                                           color:
//                                               Color.fromARGB(255, 175, 7, 149),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         height: 13,
//                                       ),
//                                       CustomtextFeild(
//                                         hintText: "Email ",
//                                         controller: _emailController,
//                                         customicon: const Icon(
//                                           Icons.email,
//                                           color:
//                                               Color.fromARGB(255, 175, 7, 149),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         height: 13,
//                                       ),
//                                       CustomtextFeild(
//                                         hintText: "Password ",
//                                         controller: _passwordController,
//                                         customicon: const Icon(
//                                           Icons.password,
//                                           color:
//                                               Color.fromARGB(255, 175, 7, 149),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         height: 23,
//                                       ),
//                                       CustomBotton(
//                                         text: 'Sign Up',
//                                         onTap: () {},
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             const Row(
//                               children: [
//                                 Expanded(
//                                   child: Divider(),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.symmetric(
//                                       horizontal: 16, vertical: 12),
//                                   child: Text(
//                                     "OR",
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(color: Colors.black38),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: Divider(),
//                                 ),
//                               ],
//                             ),
//                             ListTile(
//                               title: const Text(
//                                 "Sign In",
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                               leading: Radio(
//                                 activeColor:
//                                     const Color.fromARGB(255, 175, 7, 149),
//                                 value: Auth.signin,
//                                 groupValue: _auth,
//                                 onChanged: (Auth? val) async {
//                                   setState(() {
//                                     _auth = val!;
//                                     button!.value
//                                         ? button!.value = false
//                                         : button!.value = true;
//                                   });
//                                 },
//                               ),
//                             ),
//                             if (_auth == Auth.signin)
//                               Container(
//                                 padding: const EdgeInsets.all(8),
//                                 child: Form(
//                                   key: _signInFormKey,
//                                   child: Column(
//                                     children: [
//                                       CustomtextFeild(
//                                         hintText: "Name ",
//                                         controller: _nameController,
//                                         customicon: const Icon(
//                                           Icons.person,
//                                           color:
//                                               Color.fromARGB(255, 175, 7, 149),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         height: 13,
//                                       ),
//                                       CustomtextFeild(
//                                         hintText: "Email ",
//                                         controller: _emailController,
//                                         customicon: const Icon(
//                                           Icons.email,
//                                           color:
//                                               Color.fromARGB(255, 175, 7, 149),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         height: 13,
//                                       ),
//                                       CustomtextFeild(
//                                         hintText: "Password ",
//                                         controller: _passwordController,
//                                         customicon: const Icon(
//                                           Icons.password,
//                                           color:
//                                               Color.fromARGB(255, 175, 7, 149),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         height: 23,
//                                       ),
//                                       CustomBotton(
//                                         text: 'Sign Ip',
//                                         onTap: () {},
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             const Text(
//                               "Sign In ",
//                               style: TextStyle(
//                                 fontSize: 54,
//                               ),
//                             ),
//                             const Padding(
//                               padding: EdgeInsets.symmetric(vertical: 16),
//                               child: Text(
//                                 "A health insurance policy  It has long-term benefits thatyuooo make taking a health insurance policy a definite goal in your annual financial plan.",
//                                 // textAlign: TextAlign.center
//                               ),
//                             ),
//                             const Formmy(),
//                             const Row(
//                               children: [
//                                 Expanded(
//                                   child: Divider(),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.symmetric(
//                                       horizontal: 16, vertical: 12),
//                                   child: Text(
//                                     "OR",
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(color: Colors.black38),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: Divider(),
//                                 ),
//                               ],
//                             ),
//                             const Padding(
//                               padding: EdgeInsets.symmetric(
//                                   vertical: 12, horizontal: 16),
//                               child: Text(
//                                   "Sign up  with Email, Microsoft, Google"),
//                             ),
//                             const bottomdata(),
//                           ],
//                         ),
//                         const Positioned(
//                           left: 0,
//                           right: 0,
//                           bottom: -68,
//                           child: CircleAvatar(
//                             backgroundColor: Color.fromARGB(192, 207, 109, 176),
//                             radius: 16,
//                             child: Icon(
//                               Icons.close,
//                               color: Color.fromARGB(255, 12, 12, 12),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           );
// //////////////////////////////////////////
      ),
    );
  }

  Route<Object?> _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const LoginLogout(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }
}

// ignore: camel_case_types
class bottomdata extends StatelessWidget {
  const bottomdata({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignmen/t.baseline,
      children: [
        GestureDetector(
          onTap: tmpFunction,
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHcPJiQ9zUJ_bwGzgugS4gACdV1xrhG76F_p3QypwcEScjY2Q&s',
            height: 44,
            width: 44,
            // fit: BoxFit.cover,
          ),
        ),
        GestureDetector(
          onTap: tmpFunction,
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_eRoYwDFcseRIb4btQJlWhsFM5rq9SUD4SFgIqqKQAMS1YQA&s',
            height: 30,
            width: 30,
            // fit: BoxFit.cover,
          ),
        ),
        GestureDetector(
          onTap: tmpFunction,
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBjQiFc0fj5i1SfE3eOE6nyO7LV3OqunApnT5WJfik-zyCAG0&s',
            height: 30,
            width: 30,
            // fit: BoxFit.cover,
          ),
        ),
      ],
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

void tmpFunction() {
  print("hello world");
}

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
