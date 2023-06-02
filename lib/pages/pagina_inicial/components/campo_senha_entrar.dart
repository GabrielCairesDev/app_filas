import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/controlador_pagina_inicial.dart';

class PaginaInicalCampoSenha extends StatelessWidget {
  const PaginaInicalCampoSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaInicial>(
      builder: (_, controladorPaginaInicial, __) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Form(
            key: controladorPaginaInicial.globalKeySenha,
            child: TextFormField(
              controller: controladorPaginaInicial.senhaControlador,
              validator: controladorPaginaInicial.validadorSenha,
              style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFEFEFEF),
                hintText: 'Senha',
                hintStyle: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.black),
                border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        );
      },
    );
  }
}
