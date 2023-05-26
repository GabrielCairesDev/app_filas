import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_carrinho/controller/controlador_pagina_carrinho.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class PaginaCarrinho extends StatefulWidget {
  const PaginaCarrinho({Key? key}) : super(key: key);

  @override
  State<PaginaCarrinho> createState() => _PaginaCarrinhoState();
}

class _PaginaCarrinhoState extends State<PaginaCarrinho> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ControladorPaginaCarrinho>(
      builder: (_, controladorPaginaCarrinho, __) {
        final produtosSelecionados = controladorPaginaCarrinho.produtosSelecionados.value;
        return Scaffold(
          appBar: AppBar(),
          body: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: produtosSelecionados.length,
            itemBuilder: (context, index) {
              final produto = produtosSelecionados[index];
              return Row(
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
                            produto.produtoImagem,
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
                        Text(produto.produtoNome),
                        Text(produto.produtoDescricao),
                        Text(
                          NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(double.parse(produto.produtoPreco.toString())),
                          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(produto.produtoQuantidade.toString()),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
