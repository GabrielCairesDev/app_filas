import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../routes/rotas.dart';

class RodaPePaginaLoja extends StatelessWidget {
  final int quantidade;
  final double valorTotal;

  const RodaPePaginaLoja({super.key, required this.quantidade, required this.valorTotal});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Stack(
        children: [
          Container(
            height: 80,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$quantidade produtos', style: const TextStyle(fontSize: 15)),
                    Text(NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(double.parse(valorTotal.toString())),
                        style: const TextStyle(fontSize: 25)),
                  ],
                ),
                const Expanded(child: SizedBox()),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Rotas.paginaCarrinho);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      fixedSize: const Size(165, 60),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Carrinho', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
                      Icon(Icons.arrow_forward_ios, color: Colors.white)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
