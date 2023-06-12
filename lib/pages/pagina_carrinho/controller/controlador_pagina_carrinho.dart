import 'package:flutter/material.dart';

import '../../../model/produtos_model_carrinho.dart';

class ControladorPaginaCarrinho extends ChangeNotifier {
  ValueNotifier<List<ProdutoModelCarrinho>> produtosSelecionados = ValueNotifier<List<ProdutoModelCarrinho>>([]);

  void adicionarProdutoSelecionado(ProdutoModelCarrinho novoProduto) {
    int produtoExistente = -1;

    for (int i = 0; i < produtosSelecionados.value.length; i++) {
      if (produtosSelecionados.value[i].produtoNome == novoProduto.produtoNome) {
        produtoExistente = i;
        break;
      }
    }

    if (produtoExistente != -1) {
    } else {
      produtosSelecionados.value.add(novoProduto);
    }

    notifyListeners();
  }

  void apagarCarrinho() {
    produtosSelecionados.value.clear();
    notifyListeners();
  }
}
