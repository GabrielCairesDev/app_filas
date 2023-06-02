import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListaProdutosValor extends StatelessWidget {
  final double valor;
  const ListaProdutosValor({super.key, required this.valor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(valor),
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
