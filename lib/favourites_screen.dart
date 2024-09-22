// lib/favorites_screen.dart

import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  final List<String> favoriteRecipes = [
    'Spaghetti Bolognese'
  ]; // Example favorite recipes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Recipes'),
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
          Expanded(
            child: ListView.builder(
              itemCount: favoriteRecipes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(favoriteRecipes[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
