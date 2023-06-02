import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/controlador_pagina_inicial.dart';

class PaginaInicalBotaoEntrar extends StatelessWidget {
  const PaginaInicalBotaoEntrar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaInicial>(
      builder: (_, controladorPaginaInicial, __) {
        return TextButton(
          onPressed: () {
            if (controladorPaginaInicial.globalKeyEmail.currentState!.validate() &&
                controladorPaginaInicial.globalKeySenha.currentState!.validate()) {
              print('Liberado para fazer Login');
              controladorPaginaInicial.apagarControladores();
            }
          },
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xFF335AF3),
            fixedSize: Size(MediaQuery.of(context).size.width, 58),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: const Text(
            'Entrar',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
