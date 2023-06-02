import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 52, 0, 141),
                Color.fromARGB(255, 231, 202, 248)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              'Hello World!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
  debugPrint('shaking');
});
