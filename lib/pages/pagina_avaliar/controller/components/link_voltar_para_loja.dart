import 'package:flutter/material.dart';

import '../../../../routes/rotas.dart';

class PaginaAvaliarLinkParaVoltarParaLoja extends StatelessWidget {
  const PaginaAvaliarLinkParaVoltarParaLoja({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: double.infinity,
      child: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).pop(Rotas.paginaInicial);
          },
          child: const Text(
            'Voltar a loja',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
