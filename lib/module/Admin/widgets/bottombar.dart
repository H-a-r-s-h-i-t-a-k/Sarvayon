import 'package:flutter/material.dart';
import 'package:pro/component/animated.dart';
import 'package:pro/constants/global_box.dart';
import 'package:pro/models/rive_assets.dart';

class BottomBarAd extends StatefulWidget {
  const BottomBarAd({super.key});

  @override
  State<BottomBarAd> createState() => _BottomBarAdState();
}

class _BottomBarAdState extends State<BottomBarAd> {
  RiveAsset selectedBottomNav = bottomNavs.first;
  double width_bb = 42, width_bbBorder = 5;

  int _page = 0;
  List<Widget> pages = [
    // const HomeScreen(),
    const Center(
      child: Text("22page"),
    ),
    const Center(
      child: Text("33page"),
    ),
    const Center(
      child: Text("44page"),
    ),
    // const AccountScreen(),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(253, 78, 86, 225),
        currentIndex: _page,
        selectedItemColor: Global_Box.selectedNavBarColor,
        unselectedItemColor: Global_Box.unselectedNavBarColor,
        items: [
          BottomNavigationBarItem(
              label: 'hdjkh',
              icon: Container(
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            width: width_bbBorder,
                            color: _page == 0
                                ? Global_Box.selectedNavBarColor
                                : Global_Box.unselectedNavBarColor))),
                width: width_bb,
              )),
          BottomNavigationBarItem(
              label: 'hdjkh',
              icon: Container(
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            width: width_bbBorder,
                            color: _page == 0
                                ? Global_Box.selectedNavBarColor
                                : Global_Box.unselectedNavBarColor))),
                width: width_bb,
              )),
          BottomNavigationBarItem(
              label: 'hdjkh',
              icon: Container(
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            width: width_bbBorder,
                            color: _page == 0
                                ? Global_Box.selectedNavBarColor
                                : Global_Box.unselectedNavBarColor))),
                width: width_bb,
              ))
        ],
      ),
    );
  }
}
