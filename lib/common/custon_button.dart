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
        shadowColor: Color.fromARGB(255, 0, 0, 0),
        elevation: 14,
        foregroundColor: Color.fromARGB(255, 23, 2, 2),
        backgroundColor: Color.fromARGB(243, 240, 64, 213),
        surfaceTintColor: Color.fromARGB(255, 23, 2, 2),
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
