import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RodaPeQuantidadeValorTotal extends StatelessWidget {
  const RodaPeQuantidadeValorTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('999 produtos', style: TextStyle(fontSize: 15)),
        Text(
          NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(10),
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
