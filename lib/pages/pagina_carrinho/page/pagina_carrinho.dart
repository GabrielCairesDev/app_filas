import 'package:flutter/material.dart';

import '../components/carrinho_lista/lista_carrinho.dart';
import '../components/carrinho_roda_pe/roda_pe_carrinho.dart';

class PaginaCarrinho extends StatelessWidget {
  const PaginaCarrinho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Loja')),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Carrinho', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              // LISTA DE PRODUTOS //
              PaginaCarrinhhoListaCarrinho(),
            ],
          ),
        ),
      ),
      // RODA PÉ DO CARRINHO //
      bottomNavigationBar: const PaginaCarrinhoRodaPe(),
    );
  }
}
