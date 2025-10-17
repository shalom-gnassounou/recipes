#  Recette App

## Description
Cette application Flutter permet de parcourir et consulter des recettes de cuisine.  
Elle comprend :  
- Une **page d’accueil** avec un message de bienvenue et des recettes mises en avant.  
- Une **liste complète de recettes** avec images, titres et descriptions.  
- Une **page de détail** pour chaque recette.  
- Un **formulaire d’ajout de recette** accessible depuis la nav bar.



---

## Wireframe

Voici le wireframe réalisé avant le développement de l’application :  
[Figma Wireframe – App Recettes](https://www.figma.com/design/5UOLK6fH7mL2LbswCbNCw5/wireframe-app-recettes?node-id=0-1&p=f&t=bzZ5b2NFkuYKhFYp-0)
---
## Fonctionnalités

- Affichage de plusieurs recettes sous forme de **cartes** (`RecipeCard`)  
- **Navigation** vers la page détail (`RecipeDetail`)  
- **Formulaire** pour ajouter une nouvelle recette avec validation des champs  
- **Nav bar** personnalisée

---

## Screenshots
[Page d'accueil](screenshot/home_page.png)
[Détail d'une recette](screenshot/detail.png)
[Formulaire ajout recette](screenshot/add_recipe.png)
[List des recettes](screenshot/list.png)



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

