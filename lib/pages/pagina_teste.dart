import 'package:flutter/material.dart';

import '../api/api.dart';
import '../model/lojas_model.dart';

class PaginaTeste extends StatelessWidget {
  const PaginaTeste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<LojaModel?>(
        future: Api().receberLoja("Padaria e Companhia"),
        builder: (context, snapshot) {
          final loja = snapshot.data!;
          return Column(
            children: [
              Text('resultado: ${loja.lojaNome}'),
              Text('resultado: ${loja.lojaTipo}'),
              Image.network(loja.lojaImagemBanner),
              Image.network(loja.lojaImagemPerfil),
            ],
          );
        },
      ),
    );
  }
}
