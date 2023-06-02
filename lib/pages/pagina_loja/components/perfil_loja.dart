import 'package:flutter/material.dart';

class PaginaLojaPerfil extends StatelessWidget {
  const PaginaLojaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 20, top: 20),
      child: Row(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(backgroundImage: NetworkImage('https://w7.pngwing.com/pngs/450/256/png-transparent-bakery-logo.png'), radius: 35)),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Trigo e Companhia', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text('Padaria', style: TextStyle(fontSize: 15)),
            ],
          ),
        ],
      ),
    );
  }
}
