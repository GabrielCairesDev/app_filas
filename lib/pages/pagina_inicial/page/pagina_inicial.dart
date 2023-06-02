import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_inicial/components/link_cadastro.dart';
import 'package:provider/provider.dart';

import '../components/botao_entrar.dart';
import '../components/campo_email_entrar.dart';
import '../components/campo_senha_entrar.dart';
import '../components/logo_app.dart';
import '../components/roda_pe.dart';
import '../controller/controlador_pagina_inicial.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaInicial>(
      builder: (_, controladorPaginaInicial, __) {
        return const Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 64, 8, 10),
              child: Column(
                children: [
                  // LOGO NO TOPO DO APLICATIVO //
                  PaginaInicialLogoAplicativo(),
                  // CAMPO DIGITAR CPF OU E-MAIL //
                  PaginaInicalCampoEmail(),
                  // CAMPO DIGITAR SENHA //
                  PaginaInicalCampoSenha(),
                  // BOTÃO EFETUAR LOGIN NO APLTICATIVO //
                  PaginaInicalBotaoEntrar(),
                  // LINK QUE DIRECIONA PARA A PAGINA DE CADASTRO //
                  PaginaInicialLinkCadastro(),
                ],
              ),
            ),
          ),
          // RODA PÉ COM IMAGEM //
          bottomNavigationBar: PaginaInicialRodaPe(),
        );
      },
    );
  }
}
