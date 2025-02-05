import 'package:flutter/material.dart';

class LikedDishController with ChangeNotifier {
  bool _selectedHeart = false;

  bool get selectedHeart => _selectedHeart;

  void selected() {
    _selectedHeart = !_selectedHeart;
    notifyListeners();
  }
}
