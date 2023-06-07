import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PerfilLojaBanner extends StatelessWidget {
  final String lojaImagemBanner;

  const PerfilLojaBanner({super.key, required this.lojaImagemBanner});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(
          imageUrl: lojaImagemBanner,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
