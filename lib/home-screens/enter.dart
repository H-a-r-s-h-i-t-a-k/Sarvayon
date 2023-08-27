import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/constants/global_box.dart';

class EnteryPoint extends StatelessWidget {
  const EnteryPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Global_Box.backgroundColor.withOpacity(0.9),
          ),
          child: Row(children: []),
        ),
      ),
    );
  }
}
