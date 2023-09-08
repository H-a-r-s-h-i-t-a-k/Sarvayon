import 'package:flutter/material.dart';
import 'package:pro/constants/global_box.dart';
import 'package:pro/providers/user_provider.dart';
import 'package:provider/provider.dart';

class BelowAppBar extends StatefulWidget {
  const BelowAppBar({super.key});

  @override
  State<BelowAppBar> createState() => _BelowAppBarState();
}

class _BelowAppBarState extends State<BelowAppBar> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Container(
      decoration: BoxDecoration(
        gradient: Global_Box.appBarGradient,
      ),
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 12),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              text: 'Hey,  ',
              style: const TextStyle(
                fontSize: 22,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: user.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
