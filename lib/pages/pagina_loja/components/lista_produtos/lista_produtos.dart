import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_loja/components/lista_produtos/lista_produto_descricao.dart';
import 'package:fura_fila/pages/pagina_loja/components/lista_produtos/lista_produtos_nome.dart';
import 'package:fura_fila/pages/pagina_loja/components/lista_produtos/lista_produtos_valor.dart';

import '../meia_pagina/meia_pagina.dart';
import 'lista_produtos_imagem.dart';

class PaginaLojaListaProdutos extends StatelessWidget {
  const PaginaLojaListaProdutos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)), color: Colors.grey.withOpacity(0.05)),
            height: 100,
            child: InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    // ABRIR O showModalBottomSheet 'METADE DA PÁGINA'
                    return ListaProdutosMeiaPagina(context);
                  },
                );
              },
              child: Stack(
                children: [
                  Row(
                    children: [
                      // IMAGEM DO PRODUTO //
                      const ListaProdutosImagem(),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.67,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // NOME DO PRODUTO //
                            ListaProdutosNome(),
                            // DESCRICAO DO PRODUTO //
                            ListaProdutoDescricao(),
                            // VALOR DO PRODUTO R$ //
                            ListaProdutosValor(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:fura_fila/pages/pagina_carrinho/controller/controlador_pagina_carrinho.dart';
// import 'package:fura_fila/pages/pagina_loja/controller/controlador_pagina_loja.dart';
// import 'package:fura_fila/pages/pagina_loja/components/adicionar_carrinho_pagina_loja.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';

// class ListaProdutos extends StatelessWidget {
//   final int index;

//   const ListaProdutos({super.key, required this.index});

//   @override
//   Widget build(BuildContext context) {
//     final controladorPaginaLoja = Provider.of<ControladorPaginaLoja>(context);
//     final controladorPaginaCarrinho = Provider.of<ControladorPaginaCarrinho>(context);

//     return InkWell(
//       onTap: () {
//         showModalBottomSheet<void>(
//           context: context,
//           builder: (BuildContext context) {
//             return ValueListenableBuilder(
//               valueListenable: controladorPaginaLoja.produtos,
//               builder: (context, value, child) => AdicionarCarrinhoPaginaLoja(
//                 // INFOS DOS PRODUTOS
//                 produtoImagem: controladorPaginaLoja.produtos.value[index].produtoImagem,
//                 produtoNome: controladorPaginaLoja.produtos.value[index].produtoNome,
//                 produtoDescricao: controladorPaginaLoja.produtos.value[index].produtoDescricao,
//                 produtoPreco: controladorPaginaLoja.produtos.value[index].produtoPreco,
//                 produtoQuantidadeCarrinho: controladorPaginaLoja.produtos.value[index].produtoQuantidadeCarrinho,
//                 // ADICIONAR E REMOVER NO CARRINHO
//                 adicionarQuantidadeCarrinho: () {
//                   controladorPaginaLoja.adicionarNoCarrinho(index);
//                 },
//                 removerQuantidadeCarrinho: () {
//                   controladorPaginaLoja.removerNoCarrinho(index);
//                 },
//                 // ADICIONAR PRODUTO AO CARRINHO
//                 adicionaProdutoSelecionado: controladorPaginaCarrinho.adicionarProdutoSelecionado,
//               ),
//             );
//           },
//         ).then((value) {
//           // FAZER O ESQUEMA PARA RESETAR O VALOR SE NÃO COMPRAR
//         });
//       },
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(bottom: 16),
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           image: DecorationImage(
      //             image: NetworkImage(
      //               controladorPaginaLoja.produtos.value[index].produtoImagem,
      //             ),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //     ),
      //     const SizedBox(width: 10),
      //     SizedBox(
      //       width: MediaQuery.of(context).size.width * 0.67,
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Text(controladorPaginaLoja.produtos.value[index].produtoNome, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
      //           Text(controladorPaginaLoja.produtos.value[index].produtoDescricao),
      //           Text(
      //             NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$')
      //                 .format(double.parse(controladorPaginaLoja.produtos.value[index].produtoPreco.toString())),
      //             style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    // );
//   }
// }
