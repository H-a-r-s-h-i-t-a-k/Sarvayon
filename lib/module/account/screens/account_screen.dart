import 'package:flutter/material.dart';
import 'package:pro/constants/global_box.dart';
import 'package:pro/models/rive_assets.dart';
import 'package:pro/module/account/widgets/accountbutton.dart';
import 'package:pro/module/account/widgets/below_app_bar.dart';
import 'package:pro/module/account/widgets/button_account.dart';
import 'package:pro/module/account/widgets/listDetails.dart';
import 'package:rive/rive.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}



class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: Global_Box.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 65,
                width: 138,
                child: const RiveAnimation.asset(
                  "asset/rive_assets/logo1.riv",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 12, top: 23, right: 1, bottom: 12),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Badge(
                        backgroundColor: Color.fromARGB(214, 10, 0, 10),
                        label: Text("4"),
                        child: Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: const Column(
          children: [
            BelowAppBar(),
            accountbutton(),
            ListDetails(),
          ],
        ),
      ),
    );
  }
}
