import 'package:flutter/material.dart';

class MeiaPaginaImagem extends StatelessWidget {
  const MeiaPaginaImagem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: NetworkImage(
              'https://www.estadao.com.br/resizer/lxbiR0rd29amDzHCxmo_ncAoOkY=/1200x1200/filters:format(jpg):quality(80):focal(322x158:332x168)/cloudfront-us-east-1.images.arcpublishing.com/estadao/UTQSVI4V4RHN7C6BDLZXD67YLE.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
