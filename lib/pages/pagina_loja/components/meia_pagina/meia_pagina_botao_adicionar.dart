import 'package:flutter/material.dart';
import 'package:fura_fila/model/produtos_model_carrinho.dart';
import 'package:provider/provider.dart';

import '../../../pagina_carrinho/controller/controlador_pagina_carrinho.dart';
import '../../controller/controlador_pagina_loja.dart';

class MeiaPaginaBotaoAdicionar extends StatelessWidget {
  final String produtoNome, produtoDescricao, produtoImagem;
  final int produtoQuantidade;
  final double produtoValor;
  const MeiaPaginaBotaoAdicionar(
      {super.key,
      required this.produtoValor,
      required this.produtoNome,
      required this.produtoDescricao,
      required this.produtoImagem,
      required this.produtoQuantidade});

  @override
  Widget build(BuildContext context) {
    final controladorPaginaCarrinho = Provider.of<ControladorPaginaCarrinho>(context);
    final controladorPaginaLoja = Provider.of<ControladorPaginaLoja>(context);
    return SizedBox(
      height: 50,
      width: 150,
      child: TextButton(
        onPressed: () {
          controladorPaginaCarrinho.adicionarProdutoSelecionado(
            ProdutoModelCarrinho(
                produtoNome: produtoNome,
                produtoDescricao: produtoDescricao,
                produtoImagem: produtoImagem,
                produtoValor: produtoValor,
                produtoQuantidade: controladorPaginaLoja.quantidade.value),
          );
          controladorPaginaLoja.atualizarQuantidadeTotal();
          controladorPaginaLoja.atualizarValorTotal(produtoValor);
          controladorPaginaLoja.resetarQuantidade();
          Navigator.pop(context);
        },
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFF335AF3),
          fixedSize: const Size(150, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Adicionar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
