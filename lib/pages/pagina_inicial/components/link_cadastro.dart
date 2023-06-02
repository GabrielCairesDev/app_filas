import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../routes/rotas.dart';
import '../controller/controlador_pagina_inicial.dart';

class PaginaInicialLinkCadastro extends StatelessWidget {
  const PaginaInicialLinkCadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaInicial>(builder: (_, controladorPaginaInicial, __) {
      return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(Rotas.paginaCadastrar);
          controladorPaginaInicial.apagarControladores();
        },
        child: const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text('Cadastre-se',
              style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline, decorationColor: Colors.grey), textAlign: TextAlign.center),
        ),
      );
    });
  }
}
