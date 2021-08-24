import 'package:flutter/material.dart';

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

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mes recettes"),
        ),
        body: Column(
          children: [
            title_section,
            buttonsSection
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
