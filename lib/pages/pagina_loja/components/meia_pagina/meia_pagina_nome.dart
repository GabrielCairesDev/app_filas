import 'package:flutter/material.dart';

class MeiaPaginaNome extends StatelessWidget {
  final String produtoNome;
  const MeiaPaginaNome({super.key, required this.produtoNome});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: double.infinity,
      child: Text(
        produtoNome,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
