import 'package:flutter/material.dart';

class ControladorPaginaCadastrar extends ChangeNotifier {
  final nomeControlador = TextEditingController();
  final emailControlador = TextEditingController();
  final senhaControlador = TextEditingController();
  final confirmarSenhaControlador = TextEditingController();

  String? validadorNome(String? nome) {
    if (nome!.isEmpty) {
      return 'Campo obrigatório*';
    }
    return null;
  }

  String? validadorEmail(String? email) {
    if (email!.isEmpty) {
      return 'Campo obrigatório*';
    }
    return null;
  }

  String? validadorSenha(String? senha) {
    if (senha!.isEmpty) {
      return 'Campo obrigatório*';
    }
    return null;
  }

  String? validadorConfirmarSenha(String? confirmarSenha) {
    if (confirmarSenha!.isEmpty) {
      return 'Campo obrigatório*';
    }
    return null;
  }

  apagarControladores() {
    nomeControlador.clear();
    emailControlador.clear();
    senhaControlador.clear();
    confirmarSenhaControlador.clear();
  }
}
