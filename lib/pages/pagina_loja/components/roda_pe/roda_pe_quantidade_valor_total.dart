import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../controller/controlador_pagina_loja.dart';

class RodaPeQuantidadeValorTotal extends StatelessWidget {
  const RodaPeQuantidadeValorTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final controladorPaginaLoja = context.watch<ControladorPaginaLoja>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedBuilder(
          animation: controladorPaginaLoja.quantidadeTotal,
          builder: (context, snapshot) {
            return Text('${controladorPaginaLoja.quantidadeTotal.value} produtos', style: const TextStyle(fontSize: 15));
          },
        ),
        AnimatedBuilder(
          animation: controladorPaginaLoja.valorTotal,
          builder: (context, snapshot) {
            return Text(
              NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(controladorPaginaLoja.valorTotal.value),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            );
          },
        ),
      ],
    );
  }
}
