import 'package:flutter/material.dart';

class ListaProdutosNome extends StatelessWidget {
  const ListaProdutosNome({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Text(
        'Pão de queijo',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
