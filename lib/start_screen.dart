import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.switchScreen});
  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(178, 133, 196, 248),
          ),

          SizedBox(height: 40),

          Text(
            'Learn Flutter the Fun Way !',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 177, 208, 233),
            ),
          ),

          SizedBox(height: 40),

          ElevatedButton.icon(
            onPressed: switchScreen,
            label: Text('Start Quiz !'),
            icon: Icon(Icons.next_plan),
          ),
        ],
      ),
    );
  }
}
