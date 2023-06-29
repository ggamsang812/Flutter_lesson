import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Model Viewer")),
        body: Center(
          child: GestureDetector(
            onTap: () {
              print('Image clicked!');
            },
            behavior: HitTestBehavior.translucent,
            child: ModelViewer(
              src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
              alt: "A 3D model of an astronaut",
            ),
          ),
        ),
      ),
    );
  }
}
