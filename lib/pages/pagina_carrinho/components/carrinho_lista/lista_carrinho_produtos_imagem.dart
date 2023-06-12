import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ListaCarrinhoProdutosImagem extends StatelessWidget {
  final String imagem;
  const ListaCarrinhoProdutosImagem({Key? key, required this.imagem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CachedNetworkImage(
          imageUrl: imagem,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
