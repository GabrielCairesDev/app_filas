import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_loja/components/meia_pagina/meia_pagina_botao_adicionar.dart';
import 'package:fura_fila/pages/pagina_loja/components/meia_pagina/meia_pagina_imagem.dart';
import 'package:fura_fila/pages/pagina_loja/components/meia_pagina/meia_pagina_descricao.dart';
import 'package:fura_fila/pages/pagina_loja/components/meia_pagina/meia_pagina_nome.dart';

import 'meia_pagina_botao_add.dart';
import 'meia_pagina_valor.dart';

class ListaProdutosMeiaPagina extends StatelessWidget {
  final String produtoNome, produtoDescricao, produtoImagem;
  final double produtoValor;
  const ListaProdutosMeiaPagina(BuildContext context,
      {super.key, required this.produtoNome, required this.produtoDescricao, required this.produtoValor, required this.produtoImagem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // IMAGEM DO PRODUTO //
                MeiaPaginaImagem(
                  produtoImagem: produtoImagem,
                ),
                // NOME DO PRODUTO //
                MeiaPaginaNome(produtoNome: produtoNome),
                // DESCRIÇÃO DO PRODUTO //
                MeiaPaginaDescricao(produtoDescricao: produtoDescricao),
                // VALOR DO PRODUTO //
                MeiaPaginaValor(produtoValor: produtoValor),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // BOTÃO ADICIONAR E REMOVER QUANTIDADE //
                    MeiaPaginaBotaoAdd(),
                    // BOTÃO ADICIONAR AO CARRINHO //
                    MeiaPaginaBotaoAdicionar()
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
