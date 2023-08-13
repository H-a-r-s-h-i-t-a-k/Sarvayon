import 'package:flutter/material.dart';
import 'package:pro/module/authen/screens/login.dart';

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
      // case '/lo:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const Authen(),
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
