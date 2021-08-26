import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {

  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {

  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.favorite, color: Colors.red, size: 40,),
        Text("55", style: TextStyle(color: Colors.grey, fontSize: 28))
      ],
    );
  }
}