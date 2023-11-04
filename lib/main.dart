import 'package:flutter/material.dart';
import 'package:solid/injector.dart';
import 'package:solid/presentation/feature/random_color/random_color_screen.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RandomColorScreen(),
    );
  }
}