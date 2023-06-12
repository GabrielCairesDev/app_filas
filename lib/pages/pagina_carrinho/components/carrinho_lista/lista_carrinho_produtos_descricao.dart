import 'package:flutter/material.dart';

class ListaCarrinhoProdutoDescricao extends StatelessWidget {
  final String descricao;
  const ListaCarrinhoProdutoDescricao({
    super.key,
    required this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Text(
        descricao,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(height: 1.2),
      ),
    );
  }
}
