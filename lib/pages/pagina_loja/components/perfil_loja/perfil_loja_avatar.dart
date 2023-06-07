import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PerfilLojaAvatar extends StatelessWidget {
  final String lojaImagemPerfil;
  const PerfilLojaAvatar({super.key, required this.lojaImagemPerfil});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CircleAvatar(
        backgroundColor: Colors.grey,
        radius: 35,
        child: ClipOval(
          child: CachedNetworkImage(
            imageUrl: lojaImagemPerfil,
            fit: BoxFit.cover,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
