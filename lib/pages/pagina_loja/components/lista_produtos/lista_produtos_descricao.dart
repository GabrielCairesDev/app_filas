import 'package:flutter/material.dart';

class ListaProdutoDescricao extends StatelessWidget {
  final String descricao;
  const ListaProdutoDescricao({
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
