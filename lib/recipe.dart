import 'package:hive/hive.dart';

part 'recipe.g.dart';

@HiveType(typeId: 0)
class Recipe {
  @HiveField(0)
  String title;
  @HiveField(1)
  String author;
  @HiveField(2)
  String imageUrl;
  @HiveField(3)
  String ingredients;
  @HiveField(4)
  String preparation;
  @HiveField(5)
  bool isFavorite;
  @HiveField(6)
  int favoriteCount;

  Recipe(this.title, this.author, this.imageUrl, this.ingredients,
      this.preparation, this.isFavorite, this.favoriteCount);

  String key() => title.hashCode.toString();
}