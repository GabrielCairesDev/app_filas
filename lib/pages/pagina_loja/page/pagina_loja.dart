import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_loja/controller/controlador_pagina_loja.dart';
import 'package:fura_fila/pages/pagina_loja/components/banner_pagina_loja.dart';
import 'package:fura_fila/pages/pagina_loja/components/pesquisar_pagina_loja.dart';
import 'package:provider/provider.dart';

import '../components/perfil_loja.dart';
import '../components/loja_lista_produtos.dart';
import '../components/roda_pe_pagina_loja.dart';

class PaginaLoja extends StatefulWidget {
  const PaginaLoja({Key? key}) : super(key: key);

  @override
  State<PaginaLoja> createState() => _PaginaLojaState();
}

class _PaginaLojaState extends State<PaginaLoja> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Provider.of<ControladorPaginaLoja>(context).pegarProdutos();
    Provider.of<ControladorPaginaLoja>(context).pegarLojas();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaLoja>(builder: (context, controladorPaginaLoja, oldWidget) {
      if (controladorPaginaLoja.loja.value.isNotEmpty ||
          controladorPaginaLoja.produtos.value.isNotEmpty ||
          controladorPaginaLoja.carregando.value == false) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 0.0),
              child: SizedBox(
                child: Column(
                  children: [
                    const BannerPaginaLoja(),
                    const SizedBox(height: 15),
                    PerfilPaginaLoja(loja: controladorPaginaLoja.loja.value[0]),
                    const SizedBox(height: 15),
                    const PesquisarPaginaLoja(),
                    const SizedBox(height: 10),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controladorPaginaLoja.produtos.value.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListaProdutos(index: index);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: RodaPePaginaLoja(
            quantidade: controladorPaginaLoja.quantidadeTotalProdutos.value,
            valorTotal: controladorPaginaLoja.valorTotalProdutos.value,
          ),
        );
      } else {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    });
  }
}
