import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro/module/account/widgets/accountbutton.dart';

class accountbutton extends StatefulWidget {
  const accountbutton({
    super.key,
  });

  @override
  State<accountbutton> createState() => _accountbuttonState();
}

class _accountbuttonState extends State<accountbutton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox.square(
          dimension: 3.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Accountbtncommon(
              text: 'Your Orders ',
              onTap: () {},
              custIcon: Icon(
                Icons.shopping_bag_outlined,
                color: Color.fromARGB(255, 111, 65, 205),
              ),
            ),
            Accountbtncommon(
              text: 'Prescriptions ',
              onTap: () {},
              custIcon: Icon(
                Icons.list_alt_outlined,
                color: Color.fromARGB(255, 111, 65, 205),
              ),
            ),
          ],
        ),
        SizedBox.square(
          dimension: 10.0,
        ),
        Row(
          children: [
            Accountbtncommon(
              onTap: () {},
              text: 'Save for Later ',
              custIcon: const Icon(
                Icons.heart_broken_outlined,
                color: Color.fromARGB(255, 111, 65, 205),
              ),
            ),
            Accountbtncommon(
              text: 'Wallet ',
              onTap: () {},
              custIcon: Icon(
                Icons.wallet_giftcard_outlined,
                color: Color.fromARGB(255, 111, 65, 205),
              ),
            ),
          ],
        )
      ],
    );
  }
}
