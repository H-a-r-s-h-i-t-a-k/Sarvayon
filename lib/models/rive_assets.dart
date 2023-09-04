import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:rive/rive.dart';

class RiveAsset {
  final String artboard, stateMachineName, title, src;
  late SMIBool tigger;
  final int page;
  // late Callback onClick;

  RiveAsset(
    this.src, {
    required this.artboard,
    required this.stateMachineName,
    required this.title,
    required this.page,
    SMIBool? tigger,

    //  Navigator.of(context).push(_createRoute());
  });

  set setInput(SMIBool status) {
    tigger = status;
  }
}

List<RiveAsset> bottomNavs = [
  RiveAsset(
    "asset/rive_assets/icons.riv",
    page: 0,
    artboard: "HOME",
    stateMachineName: "HOME_interactivity",
    title: "HOME",
  ),
  RiveAsset("asset/rive_assets/icons.riv",
      page: 1,
      artboard: "SEARCH",
      stateMachineName: "SEARCH_Interactivity",
      title: "Search"),
  RiveAsset("asset/rive_assets/icons.riv",
      page: 2,
      artboard: "TIMER",
      stateMachineName: "TIMER_Interactivity",
      title: "TIMER"),
  RiveAsset("asset/rive_assets/icons.riv",
      page: 3,
      artboard: "BELL",
      stateMachineName: "BELL_Interactivity",
      title: "BELL"),
  RiveAsset("asset/rive_assets/icons.riv",
      page: 4,
      artboard: "USER",
      stateMachineName: "USER_Interactivity",
      title: "USER"),
];
