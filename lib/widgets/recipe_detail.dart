import 'package:flutter/material.dart';
import 'package:recipes/widgets/nav_bar.dart';

class RecipeDetail extends StatelessWidget {
  final String title;
  final String imagePath;

  const RecipeDetail({Key? key, required this.title, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xFF357875),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              imagePath,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF357875),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Ingrédients ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              const Text("• Exemple ingrédient 1\n• Exemple ingrédient 2\n• Exemple ingrédient 3"),
              const SizedBox(height: 24),
              const Text(
                "Étapes ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "1. Prépare les ingrédients.\n"
                    "2. Mélange et cuis selon la recette.\n"
                    "3. Sers chaud et régale-toi ! ",
              ),
              ]
          ),
        )
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
