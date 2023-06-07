import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../controller/controlador_pagina_loja.dart';

class MeiaPaginaValor extends StatelessWidget {
  final double produtoValor;
  const MeiaPaginaValor({super.key, required this.produtoValor});

  @override
  Widget build(BuildContext context) {
    final controladorPaginaLoja = context.watch<ControladorPaginaLoja>();
    return SizedBox(
      height: 20,
      width: double.infinity,
      child: AnimatedBuilder(
          animation: controladorPaginaLoja.quantidade,
          builder: (context, child) {
            return Text(
              NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(produtoValor * controladorPaginaLoja.quantidade.value),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            );
          }),
    );
  }
}
