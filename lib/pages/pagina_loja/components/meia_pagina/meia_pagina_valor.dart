import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MeiaPaginaValor extends StatelessWidget {
  const MeiaPaginaValor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: double.infinity,
      child: Text(
        NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(10),
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
