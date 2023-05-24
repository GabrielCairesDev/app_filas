import 'package:flutter/material.dart';

import '../../../model/produtos_model.dart';

class ControladorPaginaCarrinho extends ChangeNotifier {
  ValueNotifier<List<ProdutosModel>> produtosSelecionados = ValueNotifier<List<ProdutosModel>>([]);
  void adicionarProdutoSelecionado(ProdutosModel valor) {
    produtosSelecionados.value.add(valor);
  }
}
