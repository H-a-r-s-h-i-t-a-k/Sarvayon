import 'package:flutter/material.dart';
import 'package:pro/constants/global_box.dart';
import 'package:pro/module/Admin/widgets/bottombar.dart';
import 'package:pro/providers/user_provider.dart';
import 'package:provider/provider.dart';
//import 'package:rive/rive.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  static const String routeName = "/admin";
  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
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
                height: 75,
                width: 138,
                child: const RiveAnimation.asset(
                  "asset/rive_assets/logo1.riv",
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text: 'Admin ',
                      style: const TextStyle(
                        fontSize: 17,
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
            ],
          ),
        ),
      ),
      body: const BottomBarAd(),
    );
  }
}
