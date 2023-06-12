import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/controlador_pagina_carrinho.dart';
import 'lista_carrinho_produtos_descricao.dart';
import 'lista_carrinho_produtos_imagem.dart';
import 'lista_carrinho_produtos_nome.dart';
import 'lista_carrinho_produtos_valor.dart';

class PaginaCarrinhhoListaCarrinho extends StatelessWidget {
  const PaginaCarrinhhoListaCarrinho({super.key});

  @override
  Widget build(BuildContext context) {
    final controladorPaginaCarrinho = Provider.of<ControladorPaginaCarrinho>(context);
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controladorPaginaCarrinho.produtosSelecionados.value.length,
      itemBuilder: (context, index) {
        final produto = controladorPaginaCarrinho.produtosSelecionados.value[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: SizedBox(
            height: 100,
            child: InkWell(
              onTap: () {},
              child: Stack(
                children: [
                  Row(
                    children: [
                      // IMAGEM DO PRODUTO //
                      ListaCarrinhoProdutosImagem(imagem: produto.produtoImagem),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.67,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // NOME DO PRODUTO //
                            ListaCarrinhoProdutosNome(nome: produto.produtoNome),
                            // DESCRICAO DO PRODUTO //
                            ListaCarrinhoProdutoDescricao(descricao: produto.produtoDescricao),
                            // VALOR DO PRODUTO R$ E QUANTIDADE //
                            ListaCarrinhoProdutosValor(
                              valor: produto.produtoValor * produto.produtoQuantidade,
                              quantidade: produto.produtoQuantidade,
                            ),
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
