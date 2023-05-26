import 'package:flutter/material.dart';
import '../../../model/loja_model.dart';

class PerfilPaginaLoja extends StatelessWidget {
  final LojaModel loja;

  const PerfilPaginaLoja({Key? key, required this.loja}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(loja.lojaImagemPerfil),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(loja.lojaNome, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Text(loja.lojaTipo),
          ],
        ),
      ],
    );
  }
}
