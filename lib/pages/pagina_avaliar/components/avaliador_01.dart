import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_avaliar/components/avaliador_estrelas.dart';
import 'package:provider/provider.dart';

import '../controller/controlador_pagina_avaliar.dart';

class PaginaAvaliarAvaliador01 extends StatelessWidget {
  const PaginaAvaliarAvaliador01({super.key});

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
              'O quão simples foi a sua compra?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            PaginaAvaliarEstrelas(
              avaliacao: controladorPaginaAvaliar.estrela_01,
              avaliacaoMaxima: 5,
              atualizarAvaliacao: (novaAvaliacao) {
                controladorPaginaAvaliar.atualizarAvaliacao01(novaAvaliacao);
              },
            ),
          ],
        ),
      );
    });
  }
}
