import 'package:flutter/material.dart';

class RecipesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recettes du Mali"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text("Frou frou"),
          ),
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text("Zame facile"),
          )
        ],
      ),
    );
  }
}