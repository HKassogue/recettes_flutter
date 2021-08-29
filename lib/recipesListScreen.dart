import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mon1erprojet/recipe.dart';
import 'package:mon1erprojet/recipeScreen.dart';

class RecipesListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RecipesListScreenState();
  }
}

class RecipesListScreenState extends State<RecipesListScreen> {
  final List<Recipe> recipes = [
    Recipe("Zamè facile",
        "Oumou Bah",
        'http://www.recettesafricaine.com/wp-content/uploads/2016/10/xpicture3.jpg.pagespeed.ic_.sOoD_3xCgZ-768x652.jpg',
        "- 3 tasses de riz (du riz parfume ou cassé)\n- 4 gros morceaux de poisson (de votre choix ou de la dorade)\n- 3 tomates fraîches, réduites en purée\n- 3 cuillères à soupe de concentré de tomate\n- 1 bouquet de persil, écrasée\n- 1 grosse carotte, épluchée et coupée en morceaux moyens\n- 2 pommes de terre, épluchées et coupées en morceaux\n- 1 gros oignon, émincé\n- 4 gousses d’ail, hachées finement\n- 2 petites aubergines, facultatif\n- 1 petit chou, coupé en 4 morceaux\n- 200ml d’huile d’arachide\n- 2 bouillons cube ou Maggi cube\n- 4 feuilles de laurier\n- 4 piments,\n- 1 cuillère à soupe de poivre noir\n- Sel\n- 6 petits gombos\n- 1 cuillère à soupe de Yété, Si disponible\n- 1 cuillère à soupe de Nététou (si disponible)\n- 5l d’eau chaude\n\nOn peut aussi ajouter: 1 manioc doux, 1 patate douce, un peu de poisson fumé",
        "Étape 1: Préparer la farce pour le poisson:\nMélanger le persil, la moitié de l’ail, un peu de piment, ajouter du sel et 1/2 d’une Maggi. Vous pouvez piller dans un mortier ou utiliser un robot culinaire.\nEnsuite, insérez le mélange dans les morceaux de poisson et faites frire.\n\nÉtape 2: Faire la sauce de tomate:\nFaire chauffer l’huile, ajouter les oignons, les tomates, le concentré de tomates, l’ail restant, le poivre noir. Puis les faire frire pendant 15 minutes à feu moyen.\nEnsuite, ajoutez le poisson dans la sauce de tomate.\nAjouter les bouillons cube (ou Maggi), avec les feuilles de laurier et 1 tasse d’eau.\nEnsuite, laissez mijoter jusqu’à ce que les morceaux de poisson soient bien cuits, 15 minutes environ.\n\nÉtape 3: Préparer le riz:\nRetirer les morceaux de poisson et ajouter tout les légumes sauf le gombo avec 1 tasse d’eau et faire cuire les légumes jusqu’à ce qu’ils soient cuits (25 à 30 min).\nVous devez veiller à ce que les légumes soient bien prêts avant de les retirer et aussi de ne pas trop les cuire.\nEnsuite retirez les légumes, puis ajoutez le gombo avec l’eau.\nAprès 5 min enlever le gombo et ajouter le riz.\nPour rendre le riz facile à cuisiner, vous pouvez le faire tremper dans de l’eau chaude pendant 20 minutes et lavez plusieurs fois avec de l’eau tiède.\nFaites cuire le riz à feu très doux, en retournant le thieboudienne souvent pour que tous les côtés soient bien cuits.\nAu moment de servir, placez le riz dans un plat et disposer les légumes et le poisson sur le dessus.",
        true,
        55),
    Recipe("Loco froufrou",
        "Chrystelle",
        'http://www.recettesafricaine.com/wp-content/uploads/2016/11/xbeignet-banane2.jpg.pagespeed.ic_.W4ED5eDBFK.jpg',
        "- 1 kilo de banane\n- 250 g de farine de mais\n- 1 litre d’huile de friture",
        "Ecrasez les bananes grâce à votre robot électrique ou pilez-les dans votre mortier.\n\nAjoutez la farine de mais.\n\nLa pate est prête, faites frire dans de l’huile chaude en formant des boules avec une cuillère à soupe jusqu’à coloration dorées.",
        true,
        20),
    Recipe("Tica dèguè",
        "Oumou Bah",
        'http://www.recettesafricaine.com/wp-content/uploads/2016/11/sauce-arachide-600x440.jpg',
        "- 1 gros poisson fumé(poisson-chat fumé), le couper en morceaux moyens\n- 3 cuillères à soupe d’huile végétale ou de l’huile d’arachide\n- 1 gros oignon, haché finement\n- 3 gousses d’ail, hachées finement\n- 4 cuillères à soupe de pâte d’arachide\n- 2 tomates fraîches, écrasées\n- 1 cuillère à soupe de tomate concentrée\n- 1/2 cuillère à caféde poivre noire\n- 2 bouillon cubes (Maggi), facultatif\n- 1l d'eau\n- Sel et piment, selon votre goût\n\nVous pouvez aussi ajouter: des carottes, du manioc, des patates douces ou des pommes de terre",
        "Chauffer d’abord l’huile et faire revenir l’oignon pendant quelques minutes.\n\nPuis, ajouter les tomates fraiches, la tomate concentré, l’ail et le poivre noir, puis laisser cuire pendant au moins 10 minutes.\n\nAprès, ajouter l’eau dans la sauce et la pâte d’arachide, puis laisser mijoter pendant 10 minutes.\n\nMaintenant ajoutez le poisson dans la soupe, le piment, le sel et les bouillons cubes (ou Maggi), puis cuire à feu très doux pendant au moins 30 minutes.\n\nLa soupe est prête quand vous pouvez voir un peu d’huile au dessus et quand elle est aussi épaisse.\n\nPuis servez avec du riz blanc.",
        true,
        30),
    Recipe("Zamè facile 2",
        "Oumou Bah",
        'http://www.recettesafricaine.com/wp-content/uploads/2016/10/xpicture3.jpg.pagespeed.ic_.sOoD_3xCgZ-768x652.jpg',
        "- 3 tasses de riz (du riz parfume ou cassé)\n- 4 gros morceaux de poisson (de votre choix ou de la dorade)\n- 3 tomates fraîches, réduites en purée\n- 3 cuillères à soupe de concentré de tomate\n- 1 bouquet de persil, écrasée\n- 1 grosse carotte, épluchée et coupée en morceaux moyens\n- 2 pommes de terre, épluchées et coupées en morceaux\n- 1 gros oignon, émincé\n- 4 gousses d’ail, hachées finement\n- 2 petites aubergines, facultatif\n- 1 petit chou, coupé en 4 morceaux\n- 200ml d’huile d’arachide\n- 2 bouillons cube ou Maggi cube\n- 4 feuilles de laurier\n- 4 piments,\n- 1 cuillère à soupe de poivre noir\n- Sel\n- 6 petits gombos\n- 1 cuillère à soupe de Yété, Si disponible\n- 1 cuillère à soupe de Nététou (si disponible)\n- 5l d’eau chaude\n\nOn peut aussi ajouter: 1 manioc doux, 1 patate douce, un peu de poisson fumé",
        "Étape 1: Préparer la farce pour le poisson:\nMélanger le persil, la moitié de l’ail, un peu de piment, ajouter du sel et 1/2 d’une Maggi. Vous pouvez piller dans un mortier ou utiliser un robot culinaire.\nEnsuite, insérez le mélange dans les morceaux de poisson et faites frire.\n\nÉtape 2: Faire la sauce de tomate:\nFaire chauffer l’huile, ajouter les oignons, les tomates, le concentré de tomates, l’ail restant, le poivre noir. Puis les faire frire pendant 15 minutes à feu moyen.\nEnsuite, ajoutez le poisson dans la sauce de tomate.\nAjouter les bouillons cube (ou Maggi), avec les feuilles de laurier et 1 tasse d’eau.\nEnsuite, laissez mijoter jusqu’à ce que les morceaux de poisson soient bien cuits, 15 minutes environ.\n\nÉtape 3: Préparer le riz:\nRetirer les morceaux de poisson et ajouter tout les légumes sauf le gombo avec 1 tasse d’eau et faire cuire les légumes jusqu’à ce qu’ils soient cuits (25 à 30 min).\nVous devez veiller à ce que les légumes soient bien prêts avant de les retirer et aussi de ne pas trop les cuire.\nEnsuite retirez les légumes, puis ajoutez le gombo avec l’eau.\nAprès 5 min enlever le gombo et ajouter le riz.\nPour rendre le riz facile à cuisiner, vous pouvez le faire tremper dans de l’eau chaude pendant 20 minutes et lavez plusieurs fois avec de l’eau tiède.\nFaites cuire le riz à feu très doux, en retournant le thieboudienne souvent pour que tous les côtés soient bien cuits.\nAu moment de servir, placez le riz dans un plat et disposer les légumes et le poisson sur le dessus.",
        true,
        55),
    Recipe("Loco froufrou 2",
        "Chrystelle",
        'http://www.recettesafricaine.com/wp-content/uploads/2016/11/xbeignet-banane2.jpg.pagespeed.ic_.W4ED5eDBFK.jpg',
        "- 1 kilo de banane\n- 250 g de farine de mais\n- 1 litre d’huile de friture",
        "Ecrasez les bananes grâce à votre robot électrique ou pilez-les dans votre mortier.\n\nAjoutez la farine de mais.\n\nLa pate est prête, faites frire dans de l’huile chaude en formant des boules avec une cuillère à soupe jusqu’à coloration dorées.",
        true,
        20),
    Recipe("Tica dèguè 2",
        "Oumou Bah",
        'http://www.recettesafricaine.com/wp-content/uploads/2016/11/sauce-arachide-600x440.jpg',
        "- 1 gros poisson fumé(poisson-chat fumé), le couper en morceaux moyens\n- 3 cuillères à soupe d’huile végétale ou de l’huile d’arachide\n- 1 gros oignon, haché finement\n- 3 gousses d’ail, hachées finement\n- 4 cuillères à soupe de pâte d’arachide\n- 2 tomates fraîches, écrasées\n- 1 cuillère à soupe de tomate concentrée\n- 1/2 cuillère à caféde poivre noire\n- 2 bouillon cubes (Maggi), facultatif\n- 1l d'eau\n- Sel et piment, selon votre goût\n\nVous pouvez aussi ajouter: des carottes, du manioc, des patates douces ou des pommes de terre",
        "Chauffer d’abord l’huile et faire revenir l’oignon pendant quelques minutes.\n\nPuis, ajouter les tomates fraiches, la tomate concentré, l’ail et le poivre noir, puis laisser cuire pendant au moins 10 minutes.\n\nAprès, ajouter l’eau dans la sauce et la pâte d’arachide, puis laisser mijoter pendant 10 minutes.\n\nMaintenant ajoutez le poisson dans la soupe, le piment, le sel et les bouillons cubes (ou Maggi), puis cuire à feu très doux pendant au moins 30 minutes.\n\nLa soupe est prête quand vous pouvez voir un peu d’huile au dessus et quand elle est aussi épaisse.\n\nPuis servez avec du riz blanc.",
        true,
        30)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recettes du Mali"),
      ),
      body: ListView.builder(
          itemCount: recipes.length, 
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