import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../routes/rotas.dart';
import '../../widgets/textbutton_customizado.dart';
import '../../widgets/textfield_customizado.dart';
import 'controlador_pagina_inicial.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  GlobalKey<FormState> globalKeyEmail = GlobalKey();
  GlobalKey<FormState> globalKeySenha = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaInicial>(
      builder: (_, controladorPaginaInicial, __) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 75),
                  Image.asset('assets/images/logo.png', fit: BoxFit.cover),
                  const SizedBox(height: 20),
                  Form(
                      key: globalKeyEmail,
                      // autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: TextFieldCustomizado(
                          texto: 'CPF ou E-mail',
                          textFieldControlador: controladorPaginaInicial.emailControlador,
                          textFieldValidador: controladorPaginaInicial.validadorEmail)),
                  const SizedBox(height: 10),
                  Form(
                      key: globalKeySenha,
                      // autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: TextFieldCustomizado(
                          texto: 'Senha',
                          textFieldControlador: controladorPaginaInicial.senhaControlador,
                          textFieldValidador: controladorPaginaInicial.validadorSenha)),
                  const SizedBox(height: 10),
                  TextButtonCustomizado(
                      texto: 'Entrar',
                      onPressed: () {
                        if (globalKeyEmail.currentState!.validate() && globalKeySenha.currentState!.validate()) {
                          print('Liberado para fazer Login');
                        }
                      }),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(Rotas.paginaCadastrar);
                    },
                    child: const Text('Cadastre-se',
                        style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline, decorationColor: Colors.grey),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Image.asset('assets/images/login.png', fit: BoxFit.cover),
        );
      },
    );
  }
}
