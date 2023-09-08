import 'package:flutter/material.dart';

class Accountbtncommon extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Icon custIcon;
  const Accountbtncommon(
      {super.key,
      required this.text,
      required this.onTap,
      required this.custIcon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 0.0),
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              surfaceTintColor: Color.fromARGB(255, 57, 53, 53),
              backgroundColor: Color.fromARGB(239, 251, 251, 255),
              elevation: 2.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(90),
              )),
          onPressed: onTap,
          child: Row(
            children: [
              custIcon,
              Text(
                text,
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 2, 2),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
