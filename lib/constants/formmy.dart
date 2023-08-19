import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Formmy extends StatelessWidget {
  const Formmy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const Text(
            "Email Id ",
            style: TextStyle(
              color: Color.fromARGB(169, 0, 0, 0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 16),
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
          const Text(
            "Password ",
            style: TextStyle(
              color: Color.fromARGB(169, 0, 0, 0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 26),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(
                    Icons.password_rounded,
                    color: Color.fromARGB(255, 175, 7, 149),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: const Color.fromARGB(255, 175, 7, 149),
              minimumSize: const Size(double.infinity, 56),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(9)),
              ),
            ),
            icon: const Icon(
              CupertinoIcons.arrow_right,
              color: Colors.white,
            ),
            label: const Text(
              "Sign In",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
