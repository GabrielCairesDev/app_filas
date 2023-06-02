import 'package:flutter/material.dart';

class PaginaInicialRodaPe extends StatelessWidget {
  const PaginaInicialRodaPe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Image.asset(
        'assets/images/login.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
