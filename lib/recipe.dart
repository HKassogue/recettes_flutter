import 'package:flutter/material.dart';

class Recipe {
  String title;
  String author;
  String imageUrl;
  String ingredients;
  String preparation;
  bool isFavorite;
  int favoriteCount;

  Recipe(this.title, this.author, this.imageUrl, this.ingredients,
      this.preparation, this.isFavorite, this.favoriteCount);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'author': author,
      'imageUrl': imageUrl,
      'ingredients': ingredients,
      'preparation': preparation,
      'isFavorite': isFavorite,
      'favoriteCount': favoriteCount,
    };
  }

  factory Recipe.fromMap(Map<String, dynamic> map) => Recipe(
    map['title'],
    map['author'],
    map['imageUrl'],
    map['ingredients'],
    map['preparation'],
    map['isFavorite'] == 1,
    map['favoriteCount'],
  );
}