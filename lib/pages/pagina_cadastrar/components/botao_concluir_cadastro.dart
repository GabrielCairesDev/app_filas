import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_cadastrar/controller/controlador_pagina_cadastrar.dart';
import 'package:provider/provider.dart';

class PaginaCadastrarBotaoConcluir extends StatelessWidget {
  const PaginaCadastrarBotaoConcluir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaCadastrar>(
      builder: (_, controladorPaginaCadastrar, __) {
        return TextButton(
          onPressed: () {
            if (controladorPaginaCadastrar.globalKeyNome.currentState!.validate() &&
                controladorPaginaCadastrar.globalKeyEmail.currentState!.validate() &&
                controladorPaginaCadastrar.globalKeySenha.currentState!.validate() &&
                controladorPaginaCadastrar.globalKeyConfirmarSenha.currentState!.validate()) {
              print('Liberado para fazer cadastro');
              controladorPaginaCadastrar.apagarControladores();
            }
          },
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xFF335AF3),
            fixedSize: Size(MediaQuery.of(context).size.width, 58),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: const Text(
            'Concluir cadastro',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
