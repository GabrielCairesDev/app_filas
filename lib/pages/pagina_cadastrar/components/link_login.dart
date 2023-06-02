import 'package:flutter/material.dart';

import '../../../routes/rotas.dart';

class PaginaCadastrarLinkLogin extends StatelessWidget {
  const PaginaCadastrarLinkLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop(Rotas.paginaInicial);
        },
        child: const Text('Já tem uma conta?\nFaça login aqui',
            style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline, decorationColor: Colors.grey), textAlign: TextAlign.center),
      ),
    );
  }
}
