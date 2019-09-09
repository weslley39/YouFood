import 'package:flutter/foundation.dart';
import 'package:you_food/models/Cart.dart';
import 'package:you_food/models/Recipe.dart';

class CartProvider extends ChangeNotifier {
  List<Recipe> items = [];

  double get total {
    return items.fold(0, (value, element) => value + element.price);
  }

  void add(Recipe recipe) {
    items.add(recipe);
    notifyListeners();
  }
}