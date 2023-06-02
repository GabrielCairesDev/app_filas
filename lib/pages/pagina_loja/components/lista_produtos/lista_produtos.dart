import 'package:flutter/material.dart';
import 'package:fura_fila/model/produtos_model.dart';
import 'package:fura_fila/pages/pagina_loja/components/lista_produtos/lista_produto_descricao.dart';
import 'package:fura_fila/pages/pagina_loja/components/lista_produtos/lista_produtos_nome.dart';
import 'package:fura_fila/pages/pagina_loja/components/lista_produtos/lista_produtos_valor.dart';

import '../../../../api/api_service.dart';
import '../meia_pagina/meia_pagina.dart';
import 'lista_produtos_imagem.dart';

class PaginaLojaListaProdutos extends StatelessWidget {
  const PaginaLojaListaProdutos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProdutoModel>>(
      future: Api().receberProdutos(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Erro: ${snapshot.error}');
        } else if (snapshot.hasData) {
          final produtos = snapshot.data!;
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: produtos.length,
            itemBuilder: (context, index) {
              final produto = produtos[index];
              final produtoNome = produto.nome;
              final produtoDescricao = produto.descricao;
              final produtoValor = produto.valor;
              final produtoImagem = produto.imagem;

              // final produtoImagem = produto.get<String>('imagem');
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
                            ListaProdutosImagem(imagem: produtoImagem),
                            const SizedBox(width: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.67,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  // NOME DO PRODUTO //
                                  ListaProdutosNome(nome: produtoNome.toString()),
                                  // DESCRICAO DO PRODUTO //
                                  ListaProdutoDescricao(descricao: produtoDescricao.toString()),
                                  // VALOR DO PRODUTO R$ //
                                  ListaProdutosValor(valor: produtoValor),
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
  }
}
