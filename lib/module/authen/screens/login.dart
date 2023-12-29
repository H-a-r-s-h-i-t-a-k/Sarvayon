// ignore_for_file: use_build_context_synchronously

// import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:pro/constants/AnimatedBtn.dart';
// import 'package:rive/rive.dart';

// import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:pro/module/authen/services/auth_services.dart';
import 'package:rive/rive.dart';

import '../../../constants/Anim1button.dart';
import '../../../constants/loginlogout.dart';

class Authen extends StatefulWidget {
  const Authen({super.key});
  static const String routeName = "/login";
  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool isloginLogout = false;
  late RiveAnimationController _btnAnimationController;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation(
      "active",
      autoplay: false,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const RiveAnimation.asset(
            // "asset/rive_assets/.riv",
            "asset/rive_assets/i1.riv",
            fit: BoxFit.fill,
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 1,
                sigmaY: 1,
              ),
              child: const SizedBox(
                height: 80,
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width * 0.9,
            bottom: 20,
            height: 20,
            // ignore: sort_child_properties_last
            child: const Text(
              "Skip ",
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
          const RiveAnimation.asset(
            // "asset/rive_assets/.riv",
            "asset/rive_assets/logo1.riv",

            // fit: BoxFit.fill,
          ),
          AnimatedPositioned(
            top: isloginLogout ? -40 : 0,
            duration: Duration(milliseconds: 250),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: const SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 23, right: 89, top: 434),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 296,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Health care, or healthcare, is the improvement of health via the prevention,",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              // color: Color.fromRGBO(9, 38, 38, 0.788),
                            ),
                          ),
                          SizedBox(
                            height: 179,
                          ),
                          Text(
                            "Health care, or healthcare, is the improvement of health via the prevention,",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold, color: Colors.white,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 561, left: 13, right: 23),
            child: AnimatedJump(
                btnAnimationController: _btnAnimationController,
                press: () async {
                  _btnAnimationController.isActive = true;

                  isloginLogout = true;
                  setState(() {});
                  await Future.delayed(
                    const Duration(milliseconds: 1100),
                  );

                  Navigator.of(context).push(_createRoute());
                  setState(() {});
                  isloginLogout = false;
                  _btnAnimationController.isActive = false;
                  await Future.delayed(
                    const Duration(milliseconds: 1600),
                  );
                }),
          ),
        ], //column
      ),
    );
  }
}

Route<Object?> _createRoute() {
  return PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (context, animation, secondaryAnimation) =>
        FadeTransition(opacity: animation, child: const LoginLogout()),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      Tween<Offset> tween;
      tween = Tween(begin: Offset(0, -1), end: Offset.zero);
      return SlideTransition(
        position: tween.animate(
          CurvedAnimation(parent: animation, curve: Curves.easeInOut),
        ),
        child: child,
      );
    },
  );
}
