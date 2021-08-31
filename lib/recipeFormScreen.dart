import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mon1erprojet/recipe.dart';
import 'package:mon1erprojet/recipeBox.dart';

class RecipeFormScreen extends StatefulWidget {
  @override
  _RecipeFormScreenState createState() => _RecipeFormScreenState();
}

class _RecipeFormScreenState extends State<RecipeFormScreen> {
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final authorController = TextEditingController();
  final urlController = TextEditingController();
  final ingredientsController = TextEditingController();
  final preparationController = TextEditingController();


  @override
  void dispose() {
    titleController.dispose();
    authorController.dispose();
    urlController.dispose();
    ingredientsController.dispose();
    preparationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nouvelle recette"),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0, left: 16.0, right: 16.0, bottom: 8.0
              ),
              child: TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0))
                  )
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer un titre';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0, left: 16.0, right: 16.0, bottom: 8.0
              ),
              child: TextFormField(
                controller: authorController,
                decoration: InputDecoration(
                  labelText: 'Author',
                  border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0))
                  )
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Veuillez entrer l'auteur";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0, left: 16.0, right: 16.0, bottom: 8.0
              ),
              child: TextFormField(
                controller: urlController,
                decoration: InputDecoration(
                  labelText: 'ImageURL',
                  border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0))
                  )
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Veuillez entrer le lien de la photo";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0, left: 16.0, right: 16.0, bottom: 8.0
              ),
              child: TextFormField(
                controller: ingredientsController,
                decoration: InputDecoration(
                  labelText: 'Ingredients',
                  border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0))
                  )
                ),
                keyboardType: TextInputType.multiline,
                minLines: 3,
                maxLines: 5,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer les ingredients';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0, left: 16.0, right: 16.0, bottom: 8.0
              ),
              child: TextFormField(
                controller: preparationController,
                decoration: InputDecoration(
                  labelText: 'Preparation',
                  border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0))
                  )
                ),
                keyboardType: TextInputType.multiline,
                minLines: 3,
                maxLines: 5,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer la preparation';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 8.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Recipe recipe = Recipe(
                        titleController.value.text,
                        authorController.value.text,
                        urlController.value.text,
                        ingredientsController.value.text,
                        preparationController.value.text,
                        false,
                        new Random().nextInt(100)
                    );
                    RecipeBox.box.put(recipe.key(), recipe);
                    Navigator.pop(context);
                  }
                },
                child: Text('Enregistrer'),
              ),
            )
          ],
        ),
      ),
    );
  }
}