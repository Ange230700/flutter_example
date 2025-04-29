// lib\src\state\app_state.dart

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyAppState extends ChangeNotifier {
  WordPair current = WordPair.random();
  final List<WordPair> history = [];
  GlobalKey<AnimatedListState>? historyListKey;
  final List<WordPair> favorites = [];

  void getNext() {
    history.insert(0, current);
    final animatedList = historyListKey?.currentState;
    animatedList?.insertItem(0);
    current = WordPair.random();
    notifyListeners();
  }

  void toggleFavorite([WordPair? pair]) {
    pair = pair ?? current;
    if (favorites.contains(pair)) {
      favorites.remove(pair);
    } else {
      favorites.add(pair);
    }
    notifyListeners();
  }

  void removeFavorite(WordPair pair) {
    favorites.remove(pair);
    notifyListeners();
  }
}
