// lib/details_screen.dart

import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final String recipeName;
  final String recipeDetails;

  DetailsScreen({required this.recipeName, required this.recipeDetails});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipeName),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Name: Abhiram Gelle | PantherID: 002850818',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.recipeName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.recipeDetails,
              style: TextStyle(fontSize: 18),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Text(isFavorite ? 'Unmark as Favorite' : 'Mark as Favorite'),
          ),
        ],
      ),
    );
  }
}
