import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_cadastrar/components/campo_email_cadastrar.dart';
import 'package:fura_fila/pages/pagina_cadastrar/components/campo_nome_cadastrar.dart';
import 'package:fura_fila/pages/pagina_cadastrar/components/campo_senha_cadastrar.dart';
import 'package:fura_fila/pages/pagina_cadastrar/components/link_login.dart';
import 'package:provider/provider.dart';
import '../components/botao_concluir_cadastro.dart';
import '../components/campo_confirmar_senha_cadastrar.dart';
import '../components/titulo_cadastrar.dart';
import '../controller/controlador_pagina_cadastrar.dart';

class PaginaCadastrar extends StatelessWidget {
  const PaginaCadastrar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaCadastrar>(
      builder: (_, controladorPaginaCadastrar, __) {
        return WillPopScope(
          onWillPop: () async {
            controladorPaginaCadastrar.apagarControladores();
            return true;
          },
          child: const Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 128, 8, 8),
                child: Column(
                  children: [
                    PaginaCadastrarTitulo(),
                    // CAMPO PARA DIGITAR NOME
                    PaginaCadastrarCampoNome(),
                    // CAMPO PARA DIGITAR O E-MAIL //
                    PaginaCadastrarCampoEmail(),
                    // CAMPO PARA DIGITAR A SENHA //
                    PaginaCadastrarCampoSenha(),
                    // CAMPO PARA CONFIRMAR A SENHA //
                    PaginaCadastrarCampoConfirmarSenha(),
                    // BOTÃO PARA CONCLUIR O CADASTRO //
                    PaginaCadastrarBotaoConcluir(),
                    // CAMPO PARA IR PARA O LOGIN //
                    PaginaCadastrarLinkLogin(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
