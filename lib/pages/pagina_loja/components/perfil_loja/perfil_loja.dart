import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_loja/components/perfil_loja/perfil_loja_avatar.dart';
import 'package:fura_fila/pages/pagina_loja/components/perfil_loja/perfil_loja_banner.dart';
import 'package:fura_fila/pages/pagina_loja/components/perfil_loja/perfil_loja_nome_tipo.dart';

import '../../../../api/api.dart';
import '../../../../model/lojas_model.dart';

class PaginaLojaInfos extends StatelessWidget {
  const PaginaLojaInfos({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LojaModel?>(
      future: Api().receberLoja("Padaria e Companhia"),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container();
        } else if (snapshot.hasError) {
          return Text('Ocorreu um erro: ${snapshot.error}');
        } else {
          if (snapshot.hasData) {
            final loja = snapshot.data!;
            return Column(
              children: [
                // BANNER DA LOJA //
                PerfilLojaBanner(lojaImagemBanner: loja.lojaImagemBanner),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 20),
                  child: Row(
                    children: [
                      // AVATAR DA LOJA //
                      PerfilLojaAvatar(lojaImagemPerfil: loja.lojaImagemPerfil),
                      // NOME E TIPO DA LOJA //
                      PerfilLojaNomeTipo(lojaNome: loja.lojaNome, lojaTipo: loja.lojaTipo),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return const Text('Nenhum dado encontrado');
          }
        }
      },
    );
  }
}
