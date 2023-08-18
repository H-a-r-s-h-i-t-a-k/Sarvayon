import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Formmy extends StatelessWidget {
  const Formmy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        Text(
          "Email Id ",
          style: TextStyle(color: Colors.black54),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(
                  Icons.email_sharp,
                  color: Color.fromARGB(255, 175, 7, 149),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
