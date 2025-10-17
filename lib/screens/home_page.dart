import 'package:flutter/material.dart';
import 'package:recipes/widgets/nav_bar.dart';
import 'package:recipes/widgets/recipe_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Center(
              child: Text(
                "Recipes",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(height: 40),
            RecipeCard(title: "Un burger", imagePath: "https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg", description: "Un bon burger")
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
