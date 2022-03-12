import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../browser.dart';
import '../home.dart';
import '../messages.dart';
import '../payment.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> data = [
    const HomeScreen(),
    const BrowserScreen(),
    const PaymentScreen(),
    const MessagesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.compare_arrows_sharp),
                  label: 'browser',
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.monetization_on),

                  label: 'payment',
                ),
                BottomNavigationBarItem(
                  icon: const Icon(CupertinoIcons.bubble_left_bubble_right),
                  label: 'messages',
                ),
              ],
              height: 66,
              backgroundColor: Colors.white,
              iconSize: 28,
              inactiveColor: const Color(0xffAEAEAE),
              border: null,
            ),
            tabBuilder: (context, index) {
              return CupertinoTabView(
                builder: (context) {
                  return data[index];
                },
              );
            }));
  }
}
