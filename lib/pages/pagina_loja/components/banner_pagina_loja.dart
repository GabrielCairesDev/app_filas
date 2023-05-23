import 'package:flutter/material.dart';

class BannerPaginaLoja extends StatelessWidget {
  const BannerPaginaLoja({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Image.network(
        'https://padariadesucesso.com/wp-content/uploads/2018/05/fachada-padaria.jpg',
        fit: BoxFit.fill,
      ),
    );
  }
}
