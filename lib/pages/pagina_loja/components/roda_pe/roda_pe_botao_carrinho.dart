import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../routes/rotas.dart';
import '../../../pagina_carrinho/controller/controlador_pagina_carrinho.dart';

class RodaPeBotaoCarrinho extends StatelessWidget {
  const RodaPeBotaoCarrinho({super.key});

  @override
  Widget build(BuildContext context) {
    final controladorPaginaCarrinho = Provider.of<ControladorPaginaCarrinho>(context);
    return TextButton(
      onPressed: () {
        if (controladorPaginaCarrinho.produtosSelecionados.value.isNotEmpty) {
          Navigator.of(context).pushNamed(Rotas.paginaCarrinho);
        }
      },
      style: TextButton.styleFrom(
          backgroundColor: const Color(0xFF335AF3),
          fixedSize: const Size(165, 60),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Carrinho', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
          Icon(Icons.arrow_forward_ios, color: Colors.white),
        ],
      ),
    );
  }
}
