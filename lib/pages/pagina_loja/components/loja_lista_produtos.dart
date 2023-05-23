import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_loja/controller/controlador_pagina_loja.dart';
import 'package:fura_fila/pages/pagina_loja/components/adicionar_carrinho_pagina_loja.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ProdutoItem extends StatelessWidget {
  final int index;

  const ProdutoItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final controladorPaginaLoja = Provider.of<ControladorPaginaLoja>(context);

    return InkWell(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) => ValueListenableBuilder(
            valueListenable: controladorPaginaLoja.quantidadeParaAdicionar,
            builder: (context, value, child) => AdicionarCarrinhoPaginaLoja(
              produtoImagem: controladorPaginaLoja.produtos.value[index].produtoImagem,
              produtoNome: controladorPaginaLoja.produtos.value[index].produtoNome,
              produtoDescricao: controladorPaginaLoja.produtos.value[index].produtoDescricao,
              produtoPreco: controladorPaginaLoja.produtos.value[index].produtoPreco,
              quantidade: controladorPaginaLoja.quantidadeParaAdicionar.value,
              adicionarQuantidade: controladorPaginaLoja.adicionarQuantidade,
              removerQuantidade: controladorPaginaLoja.removerQuantidade,
              atualizarQuantidadeTotalProdutos: controladorPaginaLoja.atualizarQuantidadeTotalProdutos,
              resetarQuantidade: controladorPaginaLoja.resetarQuantidade,
              atualizarValorTotalProdutos: controladorPaginaLoja.adicionarValorTotalProdutos,
            ),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    controladorPaginaLoja.produtos.value[index].produtoImagem,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.67,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(controladorPaginaLoja.produtos.value[index].produtoNome),
                Text(controladorPaginaLoja.produtos.value[index].produtoDescricao),
                Text(
                  NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$')
                      .format(double.parse(controladorPaginaLoja.produtos.value[index].produtoPreco.toString())),
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
