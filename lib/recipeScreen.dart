import 'package:flutter/material.dart';
import 'package:mon1erprojet/favoriteChangeNotifier.dart';
import 'package:mon1erprojet/favoriteWidget.dart';
import 'package:mon1erprojet/recipe.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';

class RecipeScreen extends StatelessWidget {
  final Recipe recipe;
  const RecipeScreen({Key ? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title_section = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(recipe.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange,
                                        fontSize: 32
                        )
                    ),
                  ),
                  Text("Par " + recipe.author,
                      style: TextStyle(
                          color: Colors.grey, fontSize: 28
                      )
                  )
                ],
              )
          ),
          FavoriteIconWidget(),
          FavoriteTextWidget()
        ],
      ),
    );

    Widget buttonsSection = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.blue, Icons.comment, "Comment"),
          _buildButtonColumn(Colors.blue, Icons.share, "Share")
        ],
      ),
    );

    Widget descriptionSection = Container(
        padding: const EdgeInsets.all(16),
        child: Column(
            children: [
              Text("Ingrédients:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(recipe.ingredients,
                  softWrap: true, textAlign: TextAlign.justify),
              Text("Préparation:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(recipe.preparation,
                  softWrap: true, textAlign: TextAlign.justify)
            ]
        )
    );

    return ChangeNotifierProvider(
      create: (context) => FavoriteChangeNotifier(
          recipe.isFavorite, recipe.fovoriteCount),
      child: Scaffold(
          appBar: AppBar(
            title: Text("Recettes du Mali"),
          ),
          body: ListView(
            children: [
              CachedNetworkImage(
                imageUrl: recipe.imageUrl,
                placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
                width: 600,
                height: 350,
                fit: BoxFit.cover,
              ),
              title_section,
              buttonsSection,
              descriptionSection
            ],
          )
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: Icon(icon, color: color, size: 40,),
        ),
        Text(label, style: TextStyle(
            color: color, fontSize: 28, fontWeight: FontWeight.w400))
      ],
    );
  }
}