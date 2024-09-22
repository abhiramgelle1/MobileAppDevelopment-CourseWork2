import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(RecipeBookApp());
}

class RecipeBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book App',
      theme: ThemeData.dark(), // Dark mode enabled
      home: HomeScreen(),
    );
  }
}
