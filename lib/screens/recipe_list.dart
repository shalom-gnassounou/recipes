import 'package:flutter/material.dart';
import 'package:recipes/widgets/nav_bar.dart';

import '../widgets/recipe_card.dart';
import '../widgets/recipe_detail.dart';

class RecipeList extends StatefulWidget {
  const RecipeList({super.key});

  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        title: const Text('Toutes les recettes '),
        backgroundColor: Color(0xFF357875),
        centerTitle: true,
      ),
      body:ListView(
        padding: const EdgeInsets.all(16),
        children: [
          RecipeCard(
            title: "Des pates carbonara",
            imagePath:
            "https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg",
            description: "Des pates à la carbonara classique",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetail(
                    title: " Pates carbonara",
                    imagePath:
                    "https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg",
                  ),
                ),
              );
            },
          ),
          RecipeCard(
            title: "Burger Classique",
            imagePath:
            "https://images.pexels.com/photos/1556688/pexels-photo-1556688.jpeg",
            description: "Un burger maison délicieux",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetail(
                    title: "Burger Classique",
                    imagePath:
                    "https://images.pexels.com/photos/1556688/pexels-photo-1556688.jpeg",
                  ),
                ),
              );
            },
          ),
          RecipeCard(
            title: "Salade Fraicheur",
            imagePath:
            "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg",
            description: "Salade legère pleinne de fraicheur et de gout",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetail(
                    title: "Salade Fraicheur",
                    imagePath:
                    "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg",
                  ),
                ),
              );
            },
          ),
          RecipeCard(
            title: 'Pizza Margherita',
            imagePath: 'https://images.pexels.com/photos/2619967/pexels-photo-2619967.jpeg',
            description: 'Une pâte fine, une sauce tomate maison et du basilic ',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetail(
                    title: "Pizza Marguerita",
                    imagePath:
                    "https://images.pexels.com/photos/2619967/pexels-photo-2619967.jpeg",
                  ),
                ),
              );
            },
          ),
          RecipeCard(
            title: 'Crêpes sucrées',
            imagePath: 'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg',
            description: 'Légères, moelleuses, parfaites avec du Nutella ',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetail(
                    title: "Crêpes sucrées",
                    imagePath:
                    "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg",
                  ),
                ),
              );

            },
          ),
          RecipeCard(
            title: 'Poulet au curry',
            imagePath: 'https://images.pexels.com/photos/1117867/pexels-photo-1117867.jpeg',
            description: 'Une explosion d’épices et de saveurs indiennes ',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetail(
                    title: "Poulet au curry",
                    imagePath:
                    "https://images.pexels.com/photos/1117867/pexels-photo-1117867.jpeg",
                  ),
                ),
              );
            },
          ),
          RecipeCard(
            title: 'Tacos maison',
            imagePath: 'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg',
            description: 'Garnis à ton goût, avec viande ou légumes ',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetail(
                    title: "Tacos maison",
                    imagePath:
                    "https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg",
                  ),
                ),
              );
            },
          ),

        ],
      ) ,
      bottomNavigationBar: NavBar(),
    );
  }
}
