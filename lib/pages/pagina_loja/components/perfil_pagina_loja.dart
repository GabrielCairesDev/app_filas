import 'package:flutter/material.dart';

class PerfilPaginaLoja extends StatelessWidget {
  const PerfilPaginaLoja({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage('https://img.freepik.com/vetores-premium/logotipo-de-bolo-retro-padaria_23-2148474406.jpg?w=2000'),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Trigo e Companhia', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Text('Padaria'),
          ],
        ),
      ],
    );
  }
}
