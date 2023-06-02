import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListaProdutosValor extends StatelessWidget {
  const ListaProdutosValor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(10),
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
