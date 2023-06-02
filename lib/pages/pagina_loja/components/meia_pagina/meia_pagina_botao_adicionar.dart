import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/controlador_pagina_loja.dart';

class MeiaPaginaBotaoAdicionar extends StatelessWidget {
  const MeiaPaginaBotaoAdicionar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaLoja>(
      builder: (_, controladorPaginaLoja, __) {
        return SizedBox(
          height: 50,
          width: 150,
          child: TextButton(
            onPressed: () {
              controladorPaginaLoja.resetarQuantidade();
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF335AF3),
              fixedSize: const Size(150, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Adicionar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
