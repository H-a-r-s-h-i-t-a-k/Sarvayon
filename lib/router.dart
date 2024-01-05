// import 'package:flutter/material.dart';
import 'package:pro/common/bottom_bar.dart';
import 'package:pro/module/Admin/Admin_screen.dart';
import 'package:pro/module/authen/screens/login.dart';
import 'package:pro/module/home-screens/home.dart';

// class MyRoutes {
//   static String Authen = "/Authen";
//   static String HomeRoutes = "/home";
// }

//  initialRoute: "/",
//       routes: {
//         "/": (context) => const HomePage(),
//         MyRoutes.HomeRoute: (context) => const HomePage(),
//         MyRoutes.loginRoute: (context) => const LoginPage(),
//       },
// GoRouter router=Goroute
Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Authen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const Authen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const HomeScreen(),
      );
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const BottomBar(),
      );
    case AdminScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const AdminScreen(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Sooooryyy 404 ERRROR"),
          ),
        ),
      );
  }
}
