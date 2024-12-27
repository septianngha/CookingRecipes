import 'package:flutter/material.dart';
import 'package:cooking_recipes/started_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cooking Recipes',
      theme: ThemeData(),
      home: StartedScreen(),
    );
  }
}
