import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../model/produtos_model.dart';

class AdicionarCarrinhoPaginaLoja extends StatefulWidget {
  const AdicionarCarrinhoPaginaLoja({
    Key? key,
    required this.quantidade,
    required this.adicionarQuantidade,
    required this.removerQuantidade,
    required this.resetarQuantidade,
    required this.produtoImagem,
    required this.produtoNome,
    required this.produtoDescricao,
    required this.produtoPreco,
    required this.atualizarQuantidadeTotalProdutos,
    required this.atualizarValorTotalProdutos,
    required this.adicionaProdutoSelecionado,
  }) : super(key: key);

  final int quantidade;
  final String produtoImagem, produtoNome, produtoDescricao;
  final double produtoPreco;
  final void Function(int valor) adicionarQuantidade;
  final void Function(int valor) removerQuantidade;
  final void Function(int valor) resetarQuantidade;
  final void Function(int valor) atualizarQuantidadeTotalProdutos;
  final void Function(ProdutosModel produto) adicionaProdutoSelecionado;

  final void Function(double valor) atualizarValorTotalProdutos;

  @override
  State<AdicionarCarrinhoPaginaLoja> createState() => _AdicionarCarrinhoPaginaLojaState();
}

class _AdicionarCarrinhoPaginaLojaState extends State<AdicionarCarrinhoPaginaLoja> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: NetworkImage(widget.produtoImagem), fit: BoxFit.cover))),
                Text(widget.produtoNome, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text(widget.produtoDescricao),
                const SizedBox(height: 10),
                Text(
                  NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(double.parse(widget.produtoPreco.toString())),
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                            height: 50,
                            width: 150,
                            decoration: const BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(10)))),
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    widget.removerQuantidade(1);
                                    setState(() {});
                                  },
                                  icon: const Icon(Icons.remove, color: Colors.black)),
                              Text(widget.quantidade.toString(), style: const TextStyle(color: Colors.black)),
                              IconButton(
                                  onPressed: () {
                                    widget.adicionarQuantidade(1);
                                    setState(() {});
                                  },
                                  icon: const Icon(Icons.add, color: Colors.black)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 60),
                    TextButton(
                      onPressed: () {
                        widget.atualizarQuantidadeTotalProdutos(widget.quantidade);
                        widget.atualizarValorTotalProdutos(widget.produtoPreco);
                        widget.resetarQuantidade(1);
                        widget.adicionaProdutoSelecionado(ProdutosModel(
                          produtoNome: widget.produtoNome,
                          produtoDescricao: widget.produtoDescricao,
                          produtoPreco: widget.produtoPreco,
                          produtoImagem: widget.produtoImagem,
                        ));

                        Navigator.pop(context);
                        setState(() {});
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          fixedSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Adicionar', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
