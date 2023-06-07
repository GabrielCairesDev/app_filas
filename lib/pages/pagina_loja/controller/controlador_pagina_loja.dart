import 'package:flutter/material.dart';

class ControladorPaginaLoja with ChangeNotifier {
  // int quantidade = 1;
  //  quantidadeTotal = 0;
  // double valorTotal = 0.0;
  ValueNotifier<double> valorTotal = ValueNotifier(0.0);
  ValueNotifier<int> quantidadeTotal = ValueNotifier(0);
  ValueNotifier<int> quantidade = ValueNotifier(1);

  void adicionarQuantidade() {
    quantidade.value++;
  }

  void removerQuantidade() {
    if (quantidade.value > 1) {
      quantidade.value--;
    }
  }

  void resetarQuantidade() {
    quantidade.value = 1;
  }

  void atualizarValorTotal(double valor) {
    valorTotal.value += quantidade.value * valor;
  }

  void atualizarQuantidadeTotal() {
    quantidadeTotal.value += quantidade.value;
  }
}
