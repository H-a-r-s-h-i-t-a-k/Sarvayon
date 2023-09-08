import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/module/account/widgets/accountbutton.dart';
import 'package:pro/module/account/widgets/icons_button.dart';

class ListDetails extends StatefulWidget {
  const ListDetails({super.key});

  @override
  State<ListDetails> createState() => _ListDetailsState();
}

class _ListDetailsState extends State<ListDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Account Settings ",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        icons_button(
          onTap: () {},
          text: 'Edit Profile',
          custicon: const Icon(
            size: 26,
            Icons.person_outline,
            color: Color.fromARGB(255, 111, 65, 205),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        icons_button(
          onTap: () {},
          text: 'Saved Addresses',
          custicon: Icon(
            Icons.location_on_outlined,
            color: Color.fromARGB(255, 111, 65, 205),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        icons_button(
          onTap: () {},
          text: 'Cards & Wallet',
          custicon: Icon(
            Icons.credit_card_sharp,
            color: Color.fromARGB(255, 111, 65, 205),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        icons_button(
          onTap: () {},
          text: 'Notifications',
          custicon: Icon(
            Icons.edit_notifications_outlined,
            color: Color.fromARGB(255, 111, 65, 205),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        icons_button(
          onTap: () {},
          text: 'Select Language',
          custicon: Icon(
            Icons.language_outlined,
            color: Color.fromARGB(255, 111, 65, 205),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "My Activity ",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        icons_button(
          onTap: () {},
          text: 'Daily Tasks',
          custicon: Icon(
            Icons.task_outlined,
            color: Color.fromARGB(255, 111, 65, 205),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        icons_button(
          onTap: () {},
          text: 'Reviews',
          custicon: Icon(
            Icons.record_voice_over_outlined,
            color: Color.fromARGB(255, 111, 65, 205),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        icons_button(
          onTap: () {},
          text: 'Meeting History',
          custicon: Icon(
            Icons.supervised_user_circle,
            color: Color.fromARGB(255, 111, 65, 205),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        icons_button(
          onTap: () {},
          text: 'Refund Preferences',
          custicon: Icon(
            Icons.balance_outlined,
            color: Color.fromARGB(255, 111, 65, 205),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Feedback & Information",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        icons_button(
          onTap: () {},
          text: 'Terms, Policies and Licenses',
          custicon: Icon(
            Icons.policy_outlined,
            color: Color.fromARGB(255, 111, 65, 205),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        icons_button(
          onTap: () {},
          text: 'Need Help',
          custicon: Icon(
            Icons.help_outline_outlined,
            color: Color.fromARGB(255, 111, 65, 205),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        icons_button(
          onTap: () {},
          text: 'Logout',
          custicon: Icon(
            Icons.logout_outlined,
            color: Color.fromARGB(255, 111, 65, 205),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
