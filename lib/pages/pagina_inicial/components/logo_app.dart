import 'package:flutter/material.dart';

class PaginaInicialLogoAplicativo extends StatelessWidget {
  const PaginaInicialLogoAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Image.asset('assets/images/logo.png', fit: BoxFit.none),
    );
  }
}
