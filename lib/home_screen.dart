import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    required this.startQuiz, // Perbaikan penulisan
    required this.profile, // Perbaikan penulisan
    super.key,
  });

  final void Function() startQuiz;
  final void Function() profile;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.3,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 100,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Quiz App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
            ),
          ),
          const Text(
            'praktikum mobile 50',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: startQuiz,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.deepPurple,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.arrow_right_alt),
                SizedBox(width: 8),
                Text('Start Quiz'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: profile,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.deepPurple,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.people_alt),
                SizedBox(
                  width: 8,
                ),
                Text('Profile')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
