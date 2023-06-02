import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../routes/rotas.dart';
import '../components/avaliacao.dart';
import '../../pagina_inicial/components/botao_azul.dart';
import '../controller/controlador_pagina_avaliar.dart';

class PaginaAvaliar extends StatefulWidget {
  const PaginaAvaliar({super.key});

  @override
  State<PaginaAvaliar> createState() => _PaginaAvaliarState();
}

class _PaginaAvaliarState extends State<PaginaAvaliar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaAvaliar>(
      builder: (_, controladorPaginaAvaliar, __) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(child: CircleAvatar(backgroundColor: Colors.blue, radius: 80, child: Icon(Icons.check, size: 100, color: Colors.white))),
                const SizedBox(height: 40),
                const Center(
                    child:
                        Text('O quão simples foi a sua compra?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))),
                const SizedBox(height: 10),
                Center(
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop(Rotas.paginaInicial);
                        },
                        child: const Text('Voltar a loja',
                            style: TextStyle(fontSize: 20, color: Colors.blue, decoration: TextDecoration.underline, decorationColor: Colors.blue),
                            textAlign: TextAlign.center))),
                const SizedBox(height: 80),
                const Text('Fale sobre a sua experiência', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black)),
                const SizedBox(height: 10),
                const Text('O quão simples foi a sua compra?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black)),
                Avaliacao(
                  avaliacao: controladorPaginaAvaliar.estrela_01,
                  avaliacaoMaxima: 5,
                  atualizarAvaliacao: (novaAvaliacao) {
                    controladorPaginaAvaliar.atualizarAvaliacao01(novaAvaliacao);
                  },
                ),
                const Text('O que achou do estabelecimento?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black)),
                Avaliacao(
                  avaliacao: controladorPaginaAvaliar.estrela_02,
                  avaliacaoMaxima: 5,
                  atualizarAvaliacao: (novaAvaliacao) {
                    controladorPaginaAvaliar.atualizarAvaliacao02(novaAvaliacao);
                  },
                ),
                const Text('Voltaria comprar no aplicativo?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black)),
                Avaliacao(
                  avaliacao: controladorPaginaAvaliar.estrela_03,
                  avaliacaoMaxima: 5,
                  atualizarAvaliacao: (novaAvaliacao) {
                    controladorPaginaAvaliar.atualizarAvaliacao03(novaAvaliacao);
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(10.0),
            child: BotaoAzul(
              texto: 'Enviar feedback',
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}
