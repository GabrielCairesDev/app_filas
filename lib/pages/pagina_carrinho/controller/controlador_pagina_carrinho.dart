import 'package:flutter/material.dart';

import '../../../model/produtos_model.dart';

class ControladorPaginaCarrinho extends ChangeNotifier {
  ValueNotifier<List<ProdutosModel>> produtosSelecionados = ValueNotifier<List<ProdutosModel>>([]);

  void adicionarProdutoSelecionado(ProdutosModel novoProduto) {
    int indiceProdutoExistente = -1;

    for (int i = 0; i < produtosSelecionados.value.length; i++) {
      if (produtosSelecionados.value[i].produtoNome == novoProduto.produtoNome) {
        indiceProdutoExistente = i;
        print('existe');
        break;
      }
    }

    if (indiceProdutoExistente != -1) {
      produtosSelecionados.value[indiceProdutoExistente].produtoQuantidade += novoProduto.produtoQuantidade;
      print('adicioanr');
    } else {
      produtosSelecionados.value.add(novoProduto);
      print('adicioanr3');
    }

    notifyListeners();
  }
}
