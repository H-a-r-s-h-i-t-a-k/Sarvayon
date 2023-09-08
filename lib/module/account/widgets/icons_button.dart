import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class icons_button extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Icon custicon;

  const icons_button(
      {super.key,
      required this.onTap,
      required this.text,
      required this.custicon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        alignment: Alignment(-1, 0),
        padding: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        foregroundColor: Color.fromARGB(255, 23, 2, 2),
        backgroundColor: Color.fromARGB(255, 254, 254, 254),
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(9)),
        ),
      ),
      label: Text(
        text,
        style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w400,
            fontSize: 16.4),
      ),
      icon: custicon,

      //  icon: custicon,  const Icon(
      //   CupertinoIcons.shopping_cart,
      //   color: Color.fromARGB(255, 47, 8, 125),
      // ),
    );
  }
}
