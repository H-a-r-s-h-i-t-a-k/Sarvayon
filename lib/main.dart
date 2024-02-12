import 'package:flutter/material.dart';
import 'package:pro/common/bottom_bar.dart';
import 'package:pro/constants/global_box.dart';
import 'package:pro/module/Admin/Admin_screen.dart';
import 'package:pro/module/account/screens/account_screen.dart';
import 'package:pro/module/authen/screens/login.dart';
import 'package:pro/module/authen/services/auth_services.dart';
import 'package:pro/module/home-screens/home.dart';
import 'package:pro/providers/user_provider.dart';
import 'package:pro/router.dart';
import 'package:provider/provider.dart';
void main() {
  // runApp(MultiProvider(providers: [
  //   ChangeNotifierProvider(
  //     create: (context) => UserProvider(),
  //   ),
  // ], child: const Sarvayon()));
}

class Sarvayon extends StatefulWidget {
  const Sarvayon({super.key});

  @override
  State<Sarvayon> createState() => _SarvayonState();
}

class _SarvayonState extends State<Sarvayon> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  // bool changeButton = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sarvayon',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        // colorScheme: ColorScheme.fromSeed(
        //     seedColor: const Color.fromARGB(255, 191, 111, 207)),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Global_Box.selectedNavBarColor,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
      ),

      onGenerateRoute: ((settings) => generateRoute(settings)),
      // initialRoute: '/login',
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? const BottomBar()
          : const Authen(),
      // home: const AdminScreen(),
    );
  }
}
