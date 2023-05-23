import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_loja/controller/controlador_pagina_loja.dart';
import 'package:fura_fila/pages/pagina_loja/components/banner_pagina_loja.dart';
import 'package:fura_fila/pages/pagina_loja/components/pesquisar_pagina_loja.dart';
import 'package:provider/provider.dart';

import '../components/perfil_pagina_loja.dart';
import '../components/loja_lista_produtos.dart';
import '../components/roda_pe_pagina_loja.dart';

class PaginaLoja extends StatefulWidget {
  const PaginaLoja({super.key});

  @override
  State<PaginaLoja> createState() => _PaginaLojaState();
}

class _PaginaLojaState extends State<PaginaLoja> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Provider.of<ControladorPaginaLoja>(context).getProdutos();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Consumer<ControladorPaginaLoja>(
      builder: (context, controladorPaginaLoja, oldWidget) {
        return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const BannerPaginaLoja(),
                  const SizedBox(height: 15),
                  const PerfilPaginaLoja(),
                  const SizedBox(height: 15),
                  const PesquisarPaginaLoja(),
                  const SizedBox(height: 15),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controladorPaginaLoja.produtos.value.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ProdutoItem(index: index);
                    },
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: RodaPePaginaLoja(
            quantidade: controladorPaginaLoja.quantidadeTotalProdutos.value,
            valorTotal: controladorPaginaLoja.valorTotalProdutos.value,
          ),
        );
      },
    );
  }
}
