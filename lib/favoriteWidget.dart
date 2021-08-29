import 'package:flutter/material.dart';
import 'package:mon1erprojet/favoriteChangeNotifier.dart';
import 'package:provider/provider.dart';

class FavoriteIconWidget extends StatefulWidget {
  _FavoriteIconWidgetState createState() => _FavoriteIconWidgetState();
}

class _FavoriteIconWidgetState extends State<FavoriteIconWidget> {

  void _toggleFavorite(FavoriteChangeNotifier _notifier){
    setState(() {
      _notifier.isFavorite = !_notifier.isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    FavoriteChangeNotifier _notifier = Provider.of<FavoriteChangeNotifier>(context);
    return IconButton(
          icon: _notifier.isFavorite ?
            Icon(Icons.favorite) : Icon(Icons.favorite_border),
          color: Colors.red,
          onPressed: () => _toggleFavorite(_notifier),
          iconSize: 40
    );
  }
}

class FavoriteTextWidget extends StatefulWidget {
  _FavoriteTextWidgetState createState() => _FavoriteTextWidgetState();
}

class _FavoriteTextWidgetState extends State<FavoriteTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteChangeNotifier>(
      builder: (context, notifier, _) => Text(
        notifier.favoriteCount.toString(),
        style: TextStyle(color: Colors.grey, fontSize: 28)
      )
    );
  }
}