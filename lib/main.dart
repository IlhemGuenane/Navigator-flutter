import 'package:flutter/material.dart';
import 'package:navigator_screens/bottom_navigator_bar.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigateApp(),
    );
  }
}

class NavigateApp extends StatelessWidget {
  const NavigateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
          child: Center(
            child: Text('go to the Home screen'),
          )),
    );
  }
}
