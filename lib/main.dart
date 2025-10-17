import 'package:flutter/material.dart';
import 'package:recipes/screens/add_recipe.dart';
import 'package:recipes/screens/recipe_list.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/list': (context) => const RecipeList(),
        '/add':(context)=>const AddRecipe(),

      },

    );
  }
}


