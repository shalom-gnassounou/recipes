import 'package:flutter/material.dart';
import 'package:recipes/widgets/nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(

        ),

      ),
      bottomNavigationBar: NavBar(),


    );
  }
}
