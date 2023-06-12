import 'package:flutter/material.dart';

class ListaCarrinhoProdutosNome extends StatelessWidget {
  final String nome;
  const ListaCarrinhoProdutosNome({super.key, required this.nome});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        nome,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
