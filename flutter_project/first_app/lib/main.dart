import 'package:flutter/material.dart';
import 'grandient_container.dart';

import 'package:shake/shake.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colorList: [
            Color.fromARGB(255, 52, 0, 141),
            Color.fromARGB(255, 231, 202, 248),
          ],
        ),
      ),
    ),
  );
}

// ShakeDector
ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
  debugPrint('shaking');
});
