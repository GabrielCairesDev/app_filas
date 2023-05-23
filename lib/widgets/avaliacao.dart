import 'package:flutter/material.dart';

class Avaliacao extends StatelessWidget {
  final int avaliacao;
  final int avaliacaoMaxima;
  final Function(int) atualizarAvaliacao;

  const Avaliacao({super.key, required this.avaliacao, required this.avaliacaoMaxima, required this.atualizarAvaliacao});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        avaliacaoMaxima,
        (index) {
          final corEstrela = avaliacao >= index + 1 ? Colors.blue : Colors.grey;
          return InkWell(
            onTap: () => atualizarAvaliacao(index + 1),
            splashColor: Colors.lightBlueAccent,
            customBorder: const CircleBorder(),
            child: Icon(Icons.star, color: corEstrela, size: 35),
          );
        },
      ),
    );
  }
}
