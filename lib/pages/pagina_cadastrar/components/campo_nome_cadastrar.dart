import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_cadastrar/controller/controlador_pagina_cadastrar.dart';
import 'package:provider/provider.dart';

class PaginaCadastrarCampoNome extends StatelessWidget {
  const PaginaCadastrarCampoNome({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaCadastrar>(
      builder: (_, controladorPaginaCadastrar, __) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Form(
            key: controladorPaginaCadastrar.globalKeyNome,
            child: TextFormField(
              controller: controladorPaginaCadastrar.controladorNome,
              validator: controladorPaginaCadastrar.validadorNome,
              style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFEFEFEF),
                hintText: 'Nome',
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
