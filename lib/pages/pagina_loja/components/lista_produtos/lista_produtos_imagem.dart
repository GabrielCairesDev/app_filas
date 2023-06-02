import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
      ),
      child: CachedNetworkImage(
        imageUrl: imagem,
        fit: BoxFit.cover,
        placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
