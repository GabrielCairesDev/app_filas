import 'package:flutter/material.dart';

class ControladorPaginaInicial extends ChangeNotifier {
  final emailControlador = TextEditingController();
  final senhaControlador = TextEditingController();
  GlobalKey<FormState> globalKeySenha = GlobalKey();
  GlobalKey<FormState> globalKeyEmail = GlobalKey();

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

  apagarControladores() {
    emailControlador.clear();
    senhaControlador.clear();
  }
}
