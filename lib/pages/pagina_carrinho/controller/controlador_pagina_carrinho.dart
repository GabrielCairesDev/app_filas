import 'package:flutter/material.dart';
import 'package:fura_fila/model/produtos_model.dart';

class ControladorPaginaCarrinho extends ChangeNotifier {
  ValueNotifier<List<ProdutosModel>> produtosSelecionados = ValueNotifier<List<ProdutosModel>>([]);

  void adicionarProdutoSelecionado(ProdutosModel novoProduto) {
    int indiceProdutoExistente = -1;

    for (int i = 0; i < produtosSelecionados.value.length; i++) {
      if (produtosSelecionados.value[i].produtoNome == novoProduto.produtoNome) {
        indiceProdutoExistente = i;
        break;
      }
    }

    if (indiceProdutoExistente != -1) {
      produtosSelecionados.value[indiceProdutoExistente].produtoQuantidade += novoProduto.produtoQuantidade;
    } else {
      produtosSelecionados.value.add(novoProduto);
    }

    notifyListeners();
  }

  int calcularTotalQuantidade() {
    int totalQuantidade = 0;
    for (final produto in produtosSelecionados.value) {
      totalQuantidade += produto.produtoQuantidade;
    }
    return totalQuantidade;
  }

  double calcularValorTotal() {
    double valorTotal = 0;
    for (final produto in produtosSelecionados.value) {
      valorTotal += produto.produtoQuantidade * produto.produtoPreco;
    }
    return valorTotal;
  }
}
