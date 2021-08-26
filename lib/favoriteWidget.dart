import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  final bool isFavorite;
  final int favoriteCount;

  const FavoriteWidget({Key? key, required this.isFavorite, required this.favoriteCount}): super(key: key);

  _FavoriteWidgetState createState() => _FavoriteWidgetState(this.isFavorite, this.favoriteCount);
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite;
  int _favoriteCount;


  _FavoriteWidgetState(this._isFavorite, this._favoriteCount);

  void _toggleFavorite(){
    setState(() {
      if(_isFavorite) {
        _isFavorite = false;
        _favoriteCount -= 1;
      } else {
        _isFavorite = true;
        _favoriteCount += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: _isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          color: Colors.red,
          onPressed: _toggleFavorite,
          iconSize: 40,),
        Text('$_favoriteCount', style: TextStyle(color: Colors.grey, fontSize: 28))
      ],
    );
  }
}