import 'package:flutter/material.dart';
import 'package:mon1erprojet/recipe.dart';
import 'package:mon1erprojet/recipeScreen.dart';
import 'package:mon1erprojet/recipesListScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      //initialRoute: '/',
      //onGenerateInitialRoutes: (settings) => RouteGenerator.generateRoute(settings),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: RecipesListScreen()   // to comment when route generate work well
    );
  }
}

/*class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => RecipesListScreen());
      case '/recipe':
        return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                RecipeScreen(recipe: settings.arguments),
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
        );
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
              appBar: AppBar(title: Text("Recettes du Mali | Erreur"), centerTitle: true),
              body: Center(
                child: Text("Page introuvable"),
              ),
            )
        );
    }
  }
}*/

