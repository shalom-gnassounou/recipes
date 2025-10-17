import 'package:flutter/material.dart';
import 'package:recipes/widgets/nav_bar.dart';
import '../widgets/recipe_card.dart';
import '../widgets/recipe_detail.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    // ✅ Liste de recettes statiques pour l'éval
    final List<Map<String, String>> recipes = [
      {
        'title': 'Des pates carbonara',
        'description': 'Des pates à la carbonara classique',
        'imageUrl': 'https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg',
      },
      {
        'title': 'Burger Classique',
        'description': 'Un burger maison délicieux',
        'imageUrl': 'https://images.pexels.com/photos/1556688/pexels-photo-1556688.jpeg',
      },
      {
        'title': 'Salade Fraicheur',
        'description': 'Salade légère pleine de fraîcheur et de goût',
        'imageUrl': 'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg',
      },
      {
        'title': 'Pizza Margherita',
        'description': 'Une pâte fine, une sauce tomate maison et du basilic',
        'imageUrl': 'https://images.pexels.com/photos/2619967/pexels-photo-2619967.jpeg',
      },
      {
        'title': 'Crêpes sucrées',
        'description': 'Légères, moelleuses, parfaites avec du Nutella',
        'imageUrl': 'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        title: const Text('Toutes les recettes !'),
        backgroundColor: const Color(0xFF357875),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return RecipeCard(
            title: recipe['title']!,
            imagePath: recipe['imageUrl']!,
            description: recipe['description']!,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetail(
                    title: recipe['title']!,
                    imagePath: recipe['imageUrl']!,
                  ),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}


