import 'package:flutter/material.dart';

class ControladorPaginaCadastrar extends ChangeNotifier {
  final controladorNome = TextEditingController();
  final controladorEmail = TextEditingController();
  final controladorSenha = TextEditingController();
  final controladorConfirmarSenha = TextEditingController();
  GlobalKey<FormState> globalKeyNome = GlobalKey();
  GlobalKey<FormState> globalKeyEmail = GlobalKey();
  GlobalKey<FormState> globalKeySenha = GlobalKey();
  GlobalKey<FormState> globalKeyConfirmarSenha = GlobalKey();

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
    controladorNome.clear();
    controladorEmail.clear();
    controladorSenha.clear();
    controladorConfirmarSenha.clear();
  }
}
