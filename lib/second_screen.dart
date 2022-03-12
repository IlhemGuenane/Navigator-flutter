import 'package:flutter/material.dart';
import '../third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to second screen',
              style: TextStyle(color: Colors.blue),
            ),
            Text(
              'go to the third screen with navigation bottom bar',
              style: TextStyle(color: Colors.red),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_rounded),
              onPressed: () {
                Navigator.of(context, rootNavigator: false).pushReplacement(
                    MaterialPageRoute(builder: (context) => ThirdScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
