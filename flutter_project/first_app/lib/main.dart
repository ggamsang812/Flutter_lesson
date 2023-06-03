import 'package:flutter/material.dart';
import 'grandient_container.dart';

import 'package:shake/shake.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

// ShakeDector
ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
  debugPrint('shaking');
});
