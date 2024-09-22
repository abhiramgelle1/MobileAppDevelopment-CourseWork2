// lib/home_screen.dart

import 'package:flutter/material.dart';
import 'details_screen.dart';
import 'favourites_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      "name": "Spaghetti Bolognese",
      "details": "Ingredients: Pasta, Tomato Sauce, Beef..."
    },
    {
      "name": "Chicken Curry",
      "details": "Ingredients: Chicken, Curry powder, Coconut milk..."
    },
    {
      "name": "Tacos",
      "details": "Ingredients: Tortilla, Beef, Lettuce, Cheese..."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe List'),
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
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(recipes[index]['name']!),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          recipeName: recipes[index]['name']!,
                          recipeDetails: recipes[index]['details']!,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavouritesScreen()),
                );
              },
              child: Text('View Favorites'),
            ),
          ),
        ],
      ),
    );
  }
}
