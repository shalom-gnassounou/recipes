#  Recette App

## Description
Cette application Flutter permet de parcourir et consulter des recettes de cuisine.  
Elle comprend :  
- Une **page d’accueil** avec un message de bienvenue et des recettes mises en avant.  
- Une **liste complète de recettes** avec images, titres et descriptions.  
- Une **page de détail** pour chaque recette.  
- Un **formulaire d’ajout de recette** accessible depuis la nav bar.



---

## Fonctionnalités

- Affichage de plusieurs recettes sous forme de **cartes** (`RecipeCard`)  
- **Navigation** vers la page détail (`RecipeDetail`)  
- **Formulaire** pour ajouter une nouvelle recette avec validation des champs  
- **Nav bar** personnalisée

---

## Screenshots
![Page d'accueil](screenshots/home_page.png)
![Détail d'une recette](screenshots/detail.png)
![Formulaire ajout recette](screenshots/add_recipe.png)
![List des recettes](screenshots/list.png)



---

## Structure du projet
lib/
├── main.dart
├── pages/
│ ├── recipe_list.dart
│ ├── add_recipe.dart
├── widgets/
│ ├── recipe_card.dart
│ └── nav_bar.dart
│ └── recipe_detail.dart

## Comment utiliser l’application

1. Cloner le dépôt :  
git clone <https://github.com/shalom-gnassounou/recipes>
Installer les dépendances :
flutter pub get
Lancer l’application :
flutter run

