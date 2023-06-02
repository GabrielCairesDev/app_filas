import 'package:flutter/material.dart';

class PaginaCadastrarTitulo extends StatelessWidget {
  const PaginaCadastrarTitulo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 32),
      child: Text(
        'Seu tempo\nVale muito!',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
