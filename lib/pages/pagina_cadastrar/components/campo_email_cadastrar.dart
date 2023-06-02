import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_cadastrar/controller/controlador_pagina_cadastrar.dart';
import 'package:provider/provider.dart';

class PaginaCadastrarCampoEmail extends StatelessWidget {
  const PaginaCadastrarCampoEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaCadastrar>(
      builder: (_, controladorPaginaCadastrar, __) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Form(
            key: controladorPaginaCadastrar.globalKeyEmail,
            child: TextFormField(
              controller: controladorPaginaCadastrar.controladorEmail,
              validator: controladorPaginaCadastrar.validadorEmail,
              style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFEFEFEF),
                hintText: 'CPF ou E-mail',
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
