import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_loja/components/lista_produtos/lista_produtos_descricao.dart';
import 'package:fura_fila/pages/pagina_loja/components/lista_produtos/lista_produtos_nome.dart';
import 'package:fura_fila/pages/pagina_loja/components/lista_produtos/lista_produtos_valor.dart';
import 'package:provider/provider.dart';

import '../../../../api/api.dart';
import '../../../../model/produtos_model.dart';
import '../../controller/controlador_pagina_loja.dart';
import '../meia_pagina/meia_pagina.dart';
import 'lista_produtos_imagem.dart';

class PaginaLojaListaProdutos extends StatelessWidget {
  const PaginaLojaListaProdutos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaLoja>(
      builder: (_, controladorPaginaLoja, __) {
        return FutureBuilder<List<ProdutoModel>>(
          future: Api().receberListaProdutos(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Container();
            } else if (snapshot.hasError) {
              return Text('Erro: ${snapshot.error}');
            } else if (snapshot.hasData) {
              final produtos = snapshot.data!;
              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: produtos.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SizedBox(
                      height: 100,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              // ABRIR O showModalBottomSheet 'METADE DA PÁGINA'
                              return ListaProdutosMeiaPagina(
                                context,
                                produtoNome: produtos[index].produtoNome,
                                produtoDescricao: produtos[index].produtoDescricao,
                                produtoValor: produtos[index].produtoValor,
                                produtoImagem: produtos[index].produtoImagem,
                              );
                            },
                          ).then((value) {
                            controladorPaginaLoja.resetarQuantidade();
                          });
                        },
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                // IMAGEM DO PRODUTO //
                                ListaProdutosImagem(imagem: produtos[index].produtoImagem),
                                const SizedBox(width: 10),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.67,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      // NOME DO PRODUTO //
                                      ListaProdutosNome(nome: produtos[index].produtoNome.toString()),
                                      // DESCRICAO DO PRODUTO //
                                      ListaProdutoDescricao(descricao: produtos[index].produtoDescricao.toString()),
                                      // VALOR DO PRODUTO R$ //
                                      ListaProdutosValor(valor: produtos[index].produtoValor),
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
            return Container();
          },
        );
      },
    );
  }
}
