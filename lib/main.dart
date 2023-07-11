import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.deepOrange,
                    Colors.orange,
                  ],
                  begin: Alignment.topCenter,
                  end: AlignmentDirectional.bottomCenter),
            ),
            child: StartScreen()),
      ),
    ),
  );
}
