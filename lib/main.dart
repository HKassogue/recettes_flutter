import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: RecipeScreen()
    );
  }
}

class RecipeScreen extends StatelessWidget {
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
                    child: Text("Zamè facile",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.deepOrange, fontSize: 32
                        )
                    ),
                  ),
                  Text("Par Oumou Bah",
                      style: TextStyle(
                          color: Colors.grey, fontSize: 28
                      )
                  )
                ],
              )
          ),
          Icon(Icons.favorite, color: Colors.red, size: 40,),
          Text("55", style: TextStyle(color: Colors.grey, fontSize: 28))
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
              Text("Ingrédients:", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("""- 3 tasses de riz (du riz parfume ou cassé)
- 4 gros morceaux de poisson (de votre choix ou de la dorade)
- 3 tomates fraîches, réduites en purée
- 3 cuillères à soupe de concentré de tomate
- 1 bouquet de persil, écrasée
- 1 grosse carotte, épluchée et coupée en morceaux moyens
- 2 pommes de terre, épluchées et coupées en morceaux
- 1 gros oignon, émincé
- 4 gousses d’ail, hachées finement
- 2 petites aubergines, facultatif
- 1 petit chou, coupé en 4 morceaux
- 200ml d’huile d’arachide
- 2 bouillons cube ou Maggi cube
- 4 feuilles de laurier
- 4 piments,
- 1 cuillère à soupe de poivre noir
- Sel
- 6 petits gombos
- 1 cuillère à soupe de Yété, Si disponible
- 1 cuillère à soupe de Nététou (si disponible)
- 5l d’eau chaude

On peut aussi ajouter: 1 manioc doux, 1 patate douce, un peu de poisson fumé
""", softWrap: true, textAlign: TextAlign.justify),
              Text("Préparation:", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("""Étape 1: Préparer la farce pour le poisson:
Mélanger le persil, la moitié de l’ail, un peu de piment, ajouter du sel et 1/2 d’une Maggi. Vous pouvez piller dans un mortier ou utiliser un robot culinaire.
Ensuite, insérez le mélange dans les morceaux de poisson et faites frire.

Étape 2: Faire la sauce de tomate:
Faire chauffer l’huile, ajouter les oignons, les tomates, le concentré de tomates, l’ail restant, le poivre noir. Puis les faire frire pendant 15 minutes à feu moyen.
Ensuite, ajoutez le poisson dans la sauce de tomate.
Ajouter les bouillons cube (ou Maggi), avec les feuilles de laurier et 1 tasse d’eau.
Ensuite, laissez mijoter jusqu’à ce que les morceaux de poisson soient bien cuits, 15 minutes environ.

Étape 3: Préparer le riz:
Retirer les morceaux de poisson et ajouter tout les légumes sauf le gombo avec 1 tasse d’eau et faire cuire les légumes jusqu’à ce qu’ils soient cuits (25 à 30 min).
Vous devez veiller à ce que les légumes soient bien prêts avant de les retirer et aussi de ne pas trop les cuire.
Ensuite retirez les légumes, puis ajoutez le gombo avec l’eau.
Après 5 min enlever le gombo et ajouter le riz.
Pour rendre le riz facile à cuisiner, vous pouvez le faire tremper dans de l’eau chaude pendant 20 minutes et lavez plusieurs fois avec de l’eau tiède.
Faites cuire le riz à feu très doux, en retournant le thieboudienne souvent pour que tous les côtés soient bien cuits.
Au moment de servir, placez le riz dans un plat et disposer les légumes et le poisson sur le dessus.""", softWrap: true, textAlign: TextAlign.justify)
            ]
        )
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Mes recettes"),
      ),
      body: ListView(
        children: [
          CachedNetworkImage(
            imageUrl: 'http://www.recettesafricaine.com/wp-content/uploads/2016/10/xpicture3.jpg.pagespeed.ic_.sOoD_3xCgZ-768x652.jpg',
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
