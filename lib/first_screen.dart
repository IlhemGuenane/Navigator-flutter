import 'package:flutter/material.dart';
import '../second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to first screen',
              style: TextStyle(color: Colors.blue),
            ),
            Text(
              'go to the second screen without navigation bottom bar',
              style: TextStyle(color: Colors.red),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_rounded),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pushReplacement(
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
