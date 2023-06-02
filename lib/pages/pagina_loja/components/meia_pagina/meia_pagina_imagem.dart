import 'package:flutter/material.dart';

class MeiaPaginaImagem extends StatelessWidget {
  final String produtoImagem;
  const MeiaPaginaImagem({super.key, required this.produtoImagem});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(produtoImagem),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
