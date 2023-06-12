import 'package:flutter/material.dart';

class ListaCarrinhoProdutosQuantidade extends StatelessWidget {
  final int quantidade;
  const ListaCarrinhoProdutosQuantidade({super.key, required this.quantidade});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        quantidade.toString(),
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
