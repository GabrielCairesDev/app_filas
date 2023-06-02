import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/controlador_pagina_loja.dart';

class MeiaPaginaBotaoAdd extends StatelessWidget {
  const MeiaPaginaBotaoAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaLoja>(
      builder: (_, controladorPaginaLoja, __) {
        return Stack(
          children: [
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.8), borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: () => controladorPaginaLoja.removerQuantidade(), icon: const Icon(Icons.remove, color: Colors.black)),
                  Text('${controladorPaginaLoja.quantidade}', style: const TextStyle(color: Colors.black)),
                  IconButton(onPressed: () => controladorPaginaLoja.adicionarQuantidade(), icon: const Icon(Icons.add, color: Colors.black)),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
