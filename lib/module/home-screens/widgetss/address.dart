import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:pro/module/account/widgets/accountbutton.dart';
import 'package:pro/module/account/widgets/icons_button.dart';

class AddressBox extends StatefulWidget {
  const AddressBox({super.key});

  @override
  State<AddressBox> createState() => _AddressBoxState();
}

class _AddressBoxState extends State<AddressBox> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 154, 168, 238),
          Color.fromARGB(255, 234, 201, 246),
          Color.fromARGB(255, 176, 86, 255),
        ], stops: [
          0.2,
          0.7,
          1.0,
        ]),
      ),
      child: Row(
        children: [
          // Accountbtncommon(
          //   onTap: () {},
          //   custIcon: Icon(
          //     Icons.camera_alt_outlined,
          //     color: Color.fromARGB(255, 111, 65, 205),
          //     semanticLabel: "Pre",
          //   ),
          // ),
          SizedBox(
            height: 22,
            child: Accountbtncommon(
              onTap: () {},
              custIcon: Icon(
                Icons.camera_alt_outlined,
                size: 20,
                color: Color.fromARGB(255, 111, 65, 205),
              ),
              text: '  Scan Prescription',
            ),
          ),
          SizedBox(
            height: 22,
            child: Accountbtncommon(
              onTap: () {
                click = true;
              },
              custIcon: Icon(
                Icons.location_on_outlined,
                size: 20,
                color: Color.fromARGB(255, 111, 65, 205),
              ),
              text: "Delivery location",
            ),
          ),

          // click
          //     ? Positioned.fill(
          //         child: BackdropFilter(
          //           filter: ImageFilter.blur(
          //             sigmaX: 5,
          //             sigmaY: 1,
          //           ),
          //           child: const SizedBox(
          //             height: 80,
          //             child: Text.rich(TextSpan(children: [])),
          //           ),
          //         ),
          //       )
          //     : SizedBox(height: 0),
        ],
      ),
    );
  }
}
