import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListaCarrinhoProdutosValor extends StatelessWidget {
  final double valor;
  final int quantidade;
  const ListaCarrinhoProdutosValor({super.key, required this.valor, required this.quantidade});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(valor),
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text('Quant.: ${quantidade.toString()}'),
        ],
      ),
    );
  }
}
