import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_avaliar/components/texto_pagamento_concluido.dart';

import '../components/avaliador_02.dart';
import '../components/avaliador_03.dart';
import '../components/botao_enviar_feedback.dart';
import '../components/circulo_com_ok.dart';
import '../components/link_voltar_para_loja.dart';
import '../components/avaliador_01.dart';
import '../components/titulo_pesquisa.dart';

class PaginaAvaliar extends StatelessWidget {
  const PaginaAvaliar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(8, 64, 8, 8),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // CIRCULO AZUL COM ICONE OK NO TOPO DA PÁGINA //
            PaginaAvaliarCirculoOK(),
            // TEXTO PAGAMENTO CONCLÚIDO //
            PaginaAvaliarTextoPagamentoConcluido(),
            // LINK PARA VOLTAR PARA A LOJA
            PaginaAvaliarLinkParaVoltarParaLoja(),
            // TITULO DA PESQUISA //
            PaginaAvalilarTituloPesquisa(),
            // PESQUISA 01 //
            PaginaAvaliarAvaliador01(),
            // PESQUISA 02 //
            PaginaAvaliarAvaliador02(),
            // PESQUISA 03 //
            PaginaAvaliarAvaliador03(),
          ],
        ),
      ),
      bottomNavigationBar: PaginaAvaliarBotaoEnviarFeedback(),
    );
  }
}
