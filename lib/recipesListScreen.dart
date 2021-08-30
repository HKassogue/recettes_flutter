import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mon1erprojet/recipe.dart';
import 'package:mon1erprojet/recipeScreen.dart';
import 'package:mon1erprojet/recipesDataBase.dart';

class RecipesListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecipesListScreenState();
  }
}

class RecipesListScreenState extends State<RecipesListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recettes du Mali"),
      ),
      body: FutureBuilder<List<Recipe>>(
        future: RecipesDataBase.instance.recipes(),
        builder: (BuildContext context, AsyncSnapshot<List<Recipe>> snapshot) {
          if(snapshot.hasData) {
            List<Recipe>? recipes = snapshot.data;
            return ListView.builder(
                itemCount: recipes!.length,
                itemBuilder: (context, index) {
                  final recipe = recipes[index];
                  return Dismissible(
                      key: Key(recipe.title),
                      onDismissed: (direction){
                        setState(() {
                          recipes.removeAt(index);
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("${recipe.title} supprimé"))
                        );
                      },
                      background: Container(color: Colors.redAccent),
                      child: RecipeItemWidget(recipe: recipe)
                  );
                }
            );
          } else {
            return Center(child: Text("Pas de données"));
          }
        },
      ),
    );
  }
}

class RecipeItemWidget extends StatelessWidget {
  const RecipeItemWidget({Key ? key, required this.recipe}) : super(key: key);
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    RecipeScreen(recipe: recipe),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  animation = CurvedAnimation(
                      parent: animation,
                      curve: Curves.ease
                  );
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                }
            )
        );
        /*Navigator.pushNamed(
            context,
            '/recipe',
            arguments: recipe
        );*/
      },
      child: Card(
        margin: EdgeInsets.all(8),
        elevation: 8,
        child: Row (
          children: [
            Hero(
              tag: "imageRecipe" + recipe.title,
              child: CachedNetworkImage(
                  imageUrl: recipe.imageUrl,
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                        recipe.title,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                    ),
                  ),
                  Text(
                    "Par " + recipe.author,
                    style: TextStyle(color: Colors.grey[500], fontSize: 16),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}