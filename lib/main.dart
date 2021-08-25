import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
                  Text("Par Tantie J'ai Faim",
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
""", softWrap: true, textAlign: TextAlign.justify)
        ]
      )
    );

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mes recettes"),
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: 600,
                  height: 350,
                  child: Center(child: CircularProgressIndicator()),
                ),
                FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: 'http://www.recettesafricaine.com/wp-content/uploads/2016/10/xpicture3.jpg.pagespeed.ic_.sOoD_3xCgZ-768x652.jpg',
                  width: 600,
                  height: 350,
                  fit: BoxFit.cover,
                )
              ],
            ),
            title_section,
            buttonsSection,
            descriptionSection
          ],
        )
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
        Text(label, style: TextStyle(color: color, fontSize: 28, fontWeight: FontWeight.w400))
      ],
    );
  }
}
