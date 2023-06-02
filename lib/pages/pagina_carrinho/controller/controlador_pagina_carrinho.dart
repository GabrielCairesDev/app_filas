import 'package:flutter/material.dart';

class ControladorPaginaCarrinho extends ChangeNotifier {}

// import 'package:flutter/material.dart';
// import 'package:fura_fila/model/produtos_model.dart';

// class ControladorPaginaCarrinho extends ChangeNotifier {
//   ValueNotifier<List<ProdutosModel>> produtosSelecionados = ValueNotifier<List<ProdutosModel>>([]);

//   void adicionarProdutoSelecionado(ProdutosModel novoProduto) {
//     int produtoExistente = -1;

//     for (int i = 0; i < produtosSelecionados.value.length; i++) {
//       if (produtosSelecionados.value[i].produtoNome == novoProduto.produtoNome) {
//         produtoExistente = i;
//         break;
//       }
//     }

//     if (produtoExistente != -1) {
//       produtosSelecionados.value[produtoExistente].produtoQuantidadeCarrinho += novoProduto.produtoQuantidadeCarrinho;
//     } else {
//       produtosSelecionados.value.add(novoProduto);
//     }

//     notifyListeners();
//   }
// }
