import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MeiaPaginaImagem extends StatelessWidget {
  final String produtoImagem;
  const MeiaPaginaImagem({super.key, required this.produtoImagem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: produtoImagem,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
