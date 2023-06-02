import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_loja/components/meia_pagina/meia_pagina_botao_adicionar.dart';
import 'package:fura_fila/pages/pagina_loja/components/meia_pagina/meia_pagina_imagem.dart';
import 'package:fura_fila/pages/pagina_loja/components/meia_pagina/meia_pagina_descricao.dart';
import 'package:fura_fila/pages/pagina_loja/components/meia_pagina/meia_pagina_nome.dart';

import 'meia_pagina_botao_add.dart';
import 'meia_pagina_valor.dart';

class ListaProdutosMeiaPagina extends StatelessWidget {
  const ListaProdutosMeiaPagina(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 800,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // IMAGEM DO PRODUTO //
                MeiaPaginaImagem(),
                // NOME DO PRODUTO //
                MeiaPaginaNome(),
                // DESCRIÇÃO DO PRODUTO //
                MeiaPaginaDescricao(),
                // VALOR DO PRODUTO //
                MeiaPaginaValor(),
                Row(
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
