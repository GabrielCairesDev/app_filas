import 'package:flutter/material.dart';

import '../../../model/produtos_model.dart';

class ControladorPaginaCarrinho extends ChangeNotifier {
  ValueNotifier<List<ProdutoModel>> produtosSelecionados = ValueNotifier<List<ProdutoModel>>([]);

  void adicionarProdutoSelecionado(ProdutoModel novoProduto) {
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
}
