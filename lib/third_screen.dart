import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to third screen',
              style: TextStyle(color: Colors.blue),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_rounded),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
