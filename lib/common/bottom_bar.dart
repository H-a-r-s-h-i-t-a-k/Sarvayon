import 'package:flutter/material.dart';
import 'package:pro/component/animated.dart';
import 'package:pro/constants/global_box.dart';
import 'package:pro/models/rive_assets.dart';
import 'package:pro/module/account/screens/account_screen.dart';
import 'package:pro/module/home-screens/home.dart';
import 'package:pro/module/utils/rive_utils.dart';
import 'package:rive/rive.dart';
// import 'package:rive/math.dart';
// import 'package:rive/components.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual_home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

// List<RiveAsset> bottomNavs = [
//   RiveAsset(
//     "asset/rive_assets/icons.riv",
//     artboard: "HOME",
//     stateMachineName: "HOME_interactivity",
//     title: "HOME",
//   ),
//   RiveAsset("asset/rive_assets/icons.riv",
//       artboard: "SEARCH",
//       stateMachineName: "SEARCH_Interactivity",
//       title: "Search"),
//   RiveAsset("asset/rive_assets/icons.riv",
//       artboard: "TIMER",
//       stateMachineName: "TIMER_Interactivity",
//       title: "TIMER"),
//   RiveAsset("asset/rive_assets/icons.riv",
//       artboard: "BELL", stateMachineName: "BELL_Interactivity", title: "BELL"),
//   RiveAsset("asset/rive_assets/icons.riv",
//       artboard: "USER", stateMachineName: "USER_Interactivity", title: "USER"),
// ];

class _BottomBarState extends State<BottomBar> {
  RiveAsset selectedBottomNav = bottomNavs.first;
  int _page = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const Center(
      child: Text("22page"),
    ),
    const Center(
      child: Text("33page"),
    ),
    const Center(
      child: Text("44page"),
    ),
    const AccountScreen(),
    const Center(
      child: Text("5page"),
    ),
    const Center(
      child: Text("6page"),
    )
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
            gradient: Global_Box.appBarGradient,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22),
                topRight: Radius.circular(22),
                bottomRight: Radius.circular(5),
                topLeft: Radius.circular(5)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                bottomNavs.length,
                (index) => GestureDetector(
                  onTap: () {
                    bottomNavs[index].tigger!.change(true);

                    // bottomNavs[index].tigger?.change(true);
                    if (bottomNavs[index] != selectedBottomNav) {
                      setState(() {
                        selectedBottomNav = bottomNavs[index];
                        _page = bottomNavs[index].page;
                      });
                    }

                    Future.delayed(Duration(seconds: 1), () {
                      bottomNavs[index].tigger!.change(false);
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedBr(
                        isActive: bottomNavs[index] == selectedBottomNav,
                      ),
                      SizedBox(
                        height: 36,
                        width: 36,
                        child: Opacity(
                          opacity:
                              bottomNavs[index] == selectedBottomNav ? 1 : 0.5,
                          child: RiveAnimation.asset(
                            bottomNavs.first.src,
                            artboard: bottomNavs[index].artboard,
                            onInit: (artboard) {
                              StateMachineController controller =
                                  RiveUtils.getRiveController(artboard,
                                      stateMachineName:
                                          bottomNavs[index].stateMachineName);

                              bottomNavs[index].tigger =
                                  controller.findSMI("active") as SMIBool;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class RiveAsset {
//   final String artboard, stateMachineName, title, src;
//   late final SMIBool tigger;

//   RiveAsset(
//     this.src, {
//     required this.artboard,
//     required this.stateMachineName,
//     required this.title,
//     SMIBool? tigger,
//   });

//   set setInput(SMIBool status) {
//     tigger = status;
//   }
// }

// List<RiveAsset> bottomNavs = [
//   RiveAsset(
//     "asset/rive_assets/icons.riv",
//     artboard: "HOME",
//     stateMachineName: "HOME_Interactivity",
//     title: "HOME",
//   ),
//   RiveAsset("asset/rive_assets/icons.riv",
//       artboard: "SEARCH",
//       stateMachineName: "SEARCH_Interactivity",
//       title: "Search"),
//   RiveAsset("asset/rive_assets/icons.riv",
//       artboard: "TIMER",
//       stateMachineName: "TIMER_Interactivity",
//       title: "TIMER"),
//   RiveAsset("asset/rive_assets/icons.riv",
//       artboard: "BELL", stateMachineName: "BELL_Interactivity", title: "BELL"),
//   RiveAsset("asset/rive_assets/icons.riv",
//       artboard: "USER", stateMachineName: "USER_Interactivity", title: "USER"),
// ];
