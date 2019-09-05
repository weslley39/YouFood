import 'package:you_food/models/Recipe.dart';

class RecipesMock {
  static List<Recipe> getAll() {
    return [
      Recipe(
        name: 'Salmon Bowl',
        image: 'assets/plate1.png',
        price: 24.0,
        weight: 100.0,
        calories: 100.0,
        vitamins: ['A, B6'],
        protein: 100.0,
        sodium: 100.0,
      ),
      Recipe(
        name: 'Spring Bowl',
        image: 'assets/plate5.png',
        price: 22.0,
        weight: 100.0,
        calories: 100.0,
        vitamins: ['A, B6'],
        protein: 100.0,
        sodium: 100.0,
      ),
      Recipe(
        name: 'Avocado Bowl',
        image: 'assets/plate3.png',
        price: 26.0,
        weight: 100.0,
        calories: 100.0,
        vitamins: ['A, B6'],
        protein: 100.0,
        sodium: 100.0,
      ),
      Recipe(
        name: 'Berry Bowl',
        image: 'assets/plate4.png',
        price: 28.0,
        weight: 100.0,
        calories: 100.0,
        vitamins: ['A, B6'],
        protein: 100.0,
        sodium: 100.0,
      ),
    ];
  }
}
