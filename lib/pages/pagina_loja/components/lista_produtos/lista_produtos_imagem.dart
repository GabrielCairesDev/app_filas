import 'package:flutter/material.dart';

class ListaProdutosImagem extends StatelessWidget {
  final String imagem;
  const ListaProdutosImagem({super.key, required this.imagem});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(imagem),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
