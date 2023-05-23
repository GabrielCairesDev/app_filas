import 'package:flutter/material.dart';

class ControladorPaginaAvaliar extends ChangeNotifier {
  int _estrela_01 = 0, _estrela_02 = 0, _estrela_03 = 0;
  int get estrela_01 => _estrela_01;
  int get estrela_02 => _estrela_02;
  int get estrela_03 => _estrela_03;

  void atualizarAvaliacao01(int valorEstrela01) {
    _estrela_01 = valorEstrela01;
    notifyListeners();
  }

  void atualizarAvaliacao02(int valorEstrela02) {
    _estrela_02 = valorEstrela02;
    notifyListeners();
  }

  void atualizarAvaliacao03(int valorEstrela03) {
    _estrela_03 = valorEstrela03;
    notifyListeners();
  }
}
