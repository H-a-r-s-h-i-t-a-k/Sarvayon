import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomtextFeild extends StatelessWidget {
  final TextEditingController controller;
  final Icon customicon;
  final String hintText;
  const CustomtextFeild({
    super.key,
    required this.controller,
    required this.customicon,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(172, 230, 173, 239),
          ),
          borderRadius: BorderRadius.all(Radius.circular(19.0)),
          gapPadding: 3.0,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: customicon,
          // Icon(
          //   Icons.email_sharp,
          //   color: Color.fromARGB(255, 175, 7, 149),
          // ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(19.0)),
          borderSide: BorderSide(
            color: Color.fromARGB(162, 164, 159, 164),
          ),
        ),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your $hintText ';
        }
        return null;
      },
    );
  }
}
