import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_carrinho/components/carrinho_roda_pe/roda_pe_carrinho_botao_carrinho.dart';
import 'package:fura_fila/pages/pagina_carrinho/components/carrinho_roda_pe/roda_pe_carrinho_fundo.dart';
import 'package:fura_fila/pages/pagina_carrinho/components/carrinho_roda_pe/roda_pe_carrinho_quantidade_valor_total.dart';

class PaginaCarrinhoRodaPe extends StatelessWidget {
  const PaginaCarrinhoRodaPe({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      child: Stack(
        children: [
          // BACKGROUND DO RODA PÉ //
          RodaPeCarrinhoFundo(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // TOTAL DE PRODUTOS E VALOR TOTAL DE PRODUTOS //
                RodaPeCarrinhoQuantidadeValorTotal(),
                // BOTÃO PARA IR PARA O CARRINHO //
                RodaPeCarrinhoBotaoCarrinho(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
