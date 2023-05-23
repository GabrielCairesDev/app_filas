import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../routes/rotas.dart';
import '../../widgets/textbutton_customizado.dart';
import '../../widgets/textfield_customizado.dart';
import 'controlador_pagina_cadastrar.dart';

class PaginaCadastrar extends StatefulWidget {
  const PaginaCadastrar({super.key});

  @override
  State<PaginaCadastrar> createState() => _PaginaCadastrarState();
}

class _PaginaCadastrarState extends State<PaginaCadastrar> {
  GlobalKey<FormState> globalKeyNome = GlobalKey();
  GlobalKey<FormState> globalKeyEmail = GlobalKey();
  GlobalKey<FormState> globalKeySenha = GlobalKey();
  GlobalKey<FormState> globalKeyConfirmarSenha = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaCadastrar>(
      builder: (_, controladorPaginaCadastrar, __) {
        return WillPopScope(
          onWillPop: () async {
            controladorPaginaCadastrar.apagarControladores();
            return true;
          },
          child: Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 100),
                      const Text('Seu tempo\nVale muito!', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Form(
                          key: globalKeyNome,
                          // autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: TextFieldCustomizado(
                              texto: 'Nome',
                              textFieldControlador: controladorPaginaCadastrar.nomeControlador,
                              textFieldValidador: controladorPaginaCadastrar.validadorNome)),
                      const SizedBox(height: 10),
                      Form(
                          key: globalKeyEmail,
                          // autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: TextFieldCustomizado(
                              texto: 'E-mail',
                              textFieldControlador: controladorPaginaCadastrar.emailControlador,
                              textFieldValidador: controladorPaginaCadastrar.validadorEmail)),
                      const SizedBox(height: 10),
                      Form(
                          key: globalKeySenha,
                          // autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: TextFieldCustomizado(
                              texto: 'Senha',
                              textFieldControlador: controladorPaginaCadastrar.senhaControlador,
                              textFieldValidador: controladorPaginaCadastrar.validadorSenha)),
                      const SizedBox(height: 10),
                      Form(
                          key: globalKeyConfirmarSenha,
                          // autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: TextFieldCustomizado(
                              texto: 'Confirmar Senha',
                              textFieldControlador: controladorPaginaCadastrar.confirmarSenhaControlador,
                              textFieldValidador: controladorPaginaCadastrar.validadorConfirmarSenha)),
                      const SizedBox(height: 10),
                      TextButtonCustomizado(
                        texto: 'Concluir cadastro',
                        onPressed: () {
                          if (globalKeyNome.currentState!.validate() &&
                              globalKeyEmail.currentState!.validate() &&
                              globalKeySenha.currentState!.validate() &&
                              globalKeyConfirmarSenha.currentState!.validate()) {
                            print('Liberado para fazer cadastro');
                            controladorPaginaCadastrar.apagarControladores();
                          }
                        },
                      ),
                      const SizedBox(height: 50),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop(Rotas.paginaInicial);
                        },
                        child: const Text('Já tem uma conta?\nFaça login aqui',
                            style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline, decorationColor: Colors.grey),
                            textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
