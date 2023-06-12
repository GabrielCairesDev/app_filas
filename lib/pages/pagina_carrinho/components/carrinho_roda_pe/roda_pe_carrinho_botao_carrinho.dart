import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_carrinho/controller/controlador_pagina_carrinho.dart';
import 'package:fura_fila/pages/pagina_loja/controller/controlador_pagina_loja.dart';
import 'package:provider/provider.dart';

import '../../../../../routes/rotas.dart';

class RodaPeCarrinhoBotaoCarrinho extends StatelessWidget {
  const RodaPeCarrinhoBotaoCarrinho({super.key});

  @override
  Widget build(BuildContext context) {
    final controladorPaginaCarrinho = Provider.of<ControladorPaginaCarrinho>(context);
    final controladorPaginaLoja = Provider.of<ControladorPaginaLoja>(context);
    return TextButton(
      onPressed: () {
        controladorPaginaCarrinho.apagarCarrinho();
        controladorPaginaLoja.resetarQuantidadeTotal();
        Navigator.of(context).popAndPushNamed(Rotas.paginaAvaliar);
      },
      style: TextButton.styleFrom(
          backgroundColor: const Color(0xFF335AF3),
          fixedSize: const Size(165, 60),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Pagar', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
          Icon(Icons.arrow_forward_ios, color: Colors.white),
        ],
      ),
    );
  }
}
