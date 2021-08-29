import 'package:flutter/material.dart';

class Recipe {
  String title;
  String author;
  String imageUrl;
  String ingredients;
  String preparation;
  bool isFavorite;
  int fovoriteCount;

  Recipe(this.title, this.author, this.imageUrl, this.ingredients,
      this.preparation, this.isFavorite, this.fovoriteCount);
}