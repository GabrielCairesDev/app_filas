import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_loja/components/roda_pe.dart/roda_pe_botao_carrinho.dart';
import 'package:fura_fila/pages/pagina_loja/components/roda_pe.dart/roda_pe_fundo.dart';
import 'package:fura_fila/pages/pagina_loja/components/roda_pe.dart/roda_pe_quantidade_valor_total.dart';

class PaginaLojaRodaPe extends StatelessWidget {
  const PaginaLojaRodaPe({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      child: Stack(
        children: [
          // BACKGROUND DO RODA PÉ //
          RodaPeFundo(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // TOTAL DE PRODUTOS E VALOR TOTAL DE PRODUTOS //
                RodaPeQuantidadeValorTotal(),
                // BOTÃO PARA IR PARA O CARRINHO //
                RodaPeBotaoCarrinho(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
