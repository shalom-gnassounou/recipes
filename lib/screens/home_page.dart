import 'package:flutter/material.dart';
import 'package:recipes/widgets/nav_bar.dart';
import 'package:recipes/widgets/recipe_card.dart';
import 'package:recipes/widgets/recipe_detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RecipesApp"),
        backgroundColor: const Color(0xFF357875),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://images.pexels.com/photos/1109197/pexels-photo-1109197.jpeg',
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                SizedBox(height: 130),
                Center(
                  child: Text(
                    "Bienvenue sur ton app de recette",
                    style: TextStyle(
                      color: Color(0xFF357875),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 90),
                RecipeCard(
                  title: "Pates carbonara",
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
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF357875),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/list');
                    },
                    child: const Text(
                      'Voir plus de recettes ',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
