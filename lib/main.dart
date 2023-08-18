import 'package:flutter/material.dart';
import 'package:pro/constants/global_box.dart';
import 'package:pro/module/authen/screens/login.dart';
import 'package:pro/router.dart';

void main() {
  runApp(const Sarvayon());
}

class Sarvayon extends StatefulWidget {
  const Sarvayon({super.key});

  @override
  State<Sarvayon> createState() => _SarvayonState();
}

class _SarvayonState extends State<Sarvayon> {
  bool changeButton = false;

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
      // home: const Authen(),
      initialRoute: "/",
      // routes: {
      //   "/": (context) =>  AnimatedBtn(),},
      //   MyRoutes.Authen: (context) => const Authen(),
      //   // MyRoutes.loginRoute: (context) => const LoginPage(),
      // },

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sarvayon'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Welcome Click this "),
              Builder(builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed((context), Authen.routeName);
                  },
                  child: const Text("Login"),
                );
              })
            ],
          ),
        ),
        drawer: const Drawer(),
      ),
    );
  }
}
