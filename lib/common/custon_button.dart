import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomBotton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        // alignment: Alignment(23, 43),
        // padding: EdgeInsets.symmetric(horizontal: 1, vertical: 9),
        foregroundColor: Color.fromARGB(255, 23, 2, 2),
        backgroundColor: Color.fromARGB(201, 175, 7, 150),
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(19)),
        ),
      ),
      icon: const Icon(
        CupertinoIcons.arrow_right,
        color: Colors.white,
      ),
      label: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
