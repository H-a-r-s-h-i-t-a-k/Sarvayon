import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:rive/rive.dart';
// import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  const Authen({super.key});
  static const String routeName = "/login";
  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const RiveAnimation.asset(
            "asset/rive_assets/i1.riv",
            fit: BoxFit.fill,
          ),
          Positioned(
            width: MediaQuery.of(context).size.width * 0.9,
            bottom: 20,
            height: 50,
            child: Text(
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
              child: SizedBox(),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 44.7,
                top: 310.0,
              ),
              child: Center(
                child: Container(
                  // padding: const EdgeInsets.all(50),
                  child: const Column(
                    children: [
                      Text(
                        "Sarvayan : Health Care ",
                        style: TextStyle(
                            fontSize: 45,
                            fontFamily: AutofillHints.birthdayYear,
                            fontWeight: FontWeight.bold,
                            height: 1.3),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "Health care, or healthcare, is the improvement of health via the prevention, diagnosis, treatment, amelioration or cure of disease, illness, injury",
                      ),
                      SizedBox(
                        height: 23,
                        width: 67,
                      ),
                      SizedBox(
                        height: 94,
                        width: 670,
                        child: Stack(
                          children: [
                            RiveAnimation.asset("asset/rive_assets/button.riv",
                                fit: BoxFit.fill),
                            Positioned.fill(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 23,
                                    width: 57,
                                  ),
                                  Icon(CupertinoIcons.arrow_right),
                                  Text(
                                    "Start",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 23),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // GestureDetector(
              //   onTap: () => (_btnAnimationController.isActive=true;),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
