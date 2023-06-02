import 'package:flutter/material.dart';

class PaginaAvalilarTituloPesquisa extends StatelessWidget {
  const PaginaAvalilarTituloPesquisa({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 88),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Text(
          'Fale sobre a sua experiência',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        ),
      ),
    );
  }
}
