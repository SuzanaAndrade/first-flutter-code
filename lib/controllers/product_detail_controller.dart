
import 'package:flutter/material.dart';

class ProductDetailController with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  // Método para incrementar o contador
  void increment() {
    _counter++;
    notifyListeners(); // Notifica os ouvintes (widgets) para atualizar
  }

  // Método para decrementar o contador
  void decrement() {
    if (_counter > 0) {
      _counter--;
      notifyListeners(); // Notifica os ouvintes (widgets) para atualizar
    }
  }
}