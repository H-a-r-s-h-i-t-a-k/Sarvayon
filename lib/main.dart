import 'package:flutter/material.dart';
import 'package:pro/constants/global_box.dart';

void main() {
  runApp(const Sarvayon());
}

class Sarvayon extends StatelessWidget {
  const Sarvayon({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sarvayon',
      theme: ThemeData(
        scaffoldBackgroundColor: Global_Box.backgroundColor,
        // colorScheme: ColorScheme.fromSeed(
        //     seedColor: const Color.fromARGB(255, 191, 111, 207)),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Global_Box.selectedNavBarColor,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sarvayon'),
        ),
        body: const Center(
          child: Text('Flutter Demo Home Page'),
        ),
        drawer: const Drawer(),
      ),
    );
  }
}
