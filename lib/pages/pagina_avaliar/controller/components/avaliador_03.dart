import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_avaliar/controller/components/avaliador_estrelas.dart';
import 'package:provider/provider.dart';

import '../controlador_pagina_avaliar.dart';

class PaginaAvaliarAvaliador03 extends StatelessWidget {
  const PaginaAvaliarAvaliador03({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaAvaliar>(builder: (_, controladorPaginaAvaliar, __) {
      return SizedBox(
        height: 70,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Voltaria comprar no aplicativo?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            PaginaAvaliarEstrelas(
              avaliacao: controladorPaginaAvaliar.estrela_03,
              avaliacaoMaxima: 5,
              atualizarAvaliacao: (novaAvaliacao) {
                controladorPaginaAvaliar.atualizarAvaliacao03(novaAvaliacao);
              },
            ),
          ],
        ),
      );
    });
  }
}
