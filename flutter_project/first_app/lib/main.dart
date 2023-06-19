import 'package:flutter/material.dart';
import 'grandient_container.dart';

import 'package:shake/shake.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colorList: [
            Color.fromARGB(255, 52, 0, 141),
            Color.fromARGB(255, 231, 202, 248),
          ],
        ),
      ),
    );
  }
}

// ShakeDector
ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
  debugPrint('shaking');
});
