import 'package:flutter/material.dart';

class ControladorPaginaLoja with ChangeNotifier {
  int quantidade = 1;

  void adicionarQuantidade() {
    quantidade++;
    notifyListeners();
  }

  void removerQuantidade() {
    if (quantidade > 1) {
      quantidade--;
      notifyListeners();
    }
  }

  void resetarQuantidade() {
    quantidade = 1;
    notifyListeners();
  }
}
