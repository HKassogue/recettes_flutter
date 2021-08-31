import 'package:flutter/foundation.dart';
import 'package:mon1erprojet/recipe.dart';
import 'package:mon1erprojet/recipeBox.dart';

class FavoriteChangeNotifier with ChangeNotifier {
  Recipe recipe;

  FavoriteChangeNotifier(this.recipe);

  bool get isFavorite => recipe.isFavorite;

  int get favoriteCount => recipe.favoriteCount + (recipe.isFavorite ? 1 : 0);

  set isFavorite(bool isFavorite) {
    recipe.isFavorite = isFavorite;
    RecipeBox.box.put(recipe.key(), recipe);
    notifyListeners();
  }
}