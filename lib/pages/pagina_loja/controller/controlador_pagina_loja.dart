import 'package:flutter/material.dart';

class ControladorPaginaLoja with ChangeNotifier {
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

  void resetarQuantidadeTotal() {
    valorTotal.value = 0.0;
    quantidadeTotal.value = 0;
  }
}
