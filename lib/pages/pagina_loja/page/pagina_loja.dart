import 'package:flutter/material.dart';

import '../components/campo_pesquisa.dart';
import '../components/lista_produtos/lista_produtos.dart';
import '../components/perfil_loja/perfil_loja.dart';
import '../components/roda_pe/roda_pe.dart';

class PaginaLoja extends StatelessWidget {
  const PaginaLoja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 72, 8, 8),
          child: Column(
            children: [
              // BANNER, FOTO PERFIL, NOME E TIPO DE LOJA //
              PaginaLojaInfos(),
              // CAMPO DE PESQUISA //
              PaginaLojaBuscarProdutos(),
              // LISTA DE PRODUTOS //
              PaginaLojaListaProdutos(),
            ],
          ),
        ),
      ),
      // RODA PÉ PARA O CARRINHO //
      bottomNavigationBar: PaginaLojaRodaPe(),
    );
  }
}
