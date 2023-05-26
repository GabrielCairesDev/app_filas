import 'package:flutter/material.dart';
import 'package:fura_fila/model/loja_model.dart';
import 'package:fura_fila/repositories/produtos_repositorio.dart';

import '../../../model/produtos_model.dart';
import '../../../repositories/loja_repositorio.dart';

class ControladorPaginaLoja extends ChangeNotifier {
  final ProdutoRepositorio repositorioProduto = ProdutoRepositorioImplementacao();
  final LojaRepositorioImplementacao repositorioLoja = LojaRepositorioImplementacao();

  ValueNotifier<bool> carregando = ValueNotifier<bool>(false);
  ValueNotifier<List<ProdutosModel>> produtos = ValueNotifier<List<ProdutosModel>>([]);
  ValueNotifier<List<LojaModel>> loja = ValueNotifier<List<LojaModel>>([]);

  // ValueNotifier<List<ProdutosModel>> produtosFiltrados = ValueNotifier<List<ProdutosModel>>([]);

  ValueNotifier<int> quantidadeTotalProdutos = ValueNotifier<int>(0);
  ValueNotifier<int> quantidadeParaAdicionar = ValueNotifier<int>(1);
  ValueNotifier<double> valorTotalProdutos = ValueNotifier<double>(0);

  void iniciarCarregamentoLoja() {
    carregando.value = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifyListeners();
    });
  }

  void iniciarCarregamentoProduto() {
    carregando.value = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifyListeners();
    });
  }

  void pararCarregamento() {
    carregando.value = false;
    notifyListeners();
  }

  Future<void> pegarProdutos() async {
    iniciarCarregamentoProduto();
    final resultado = await repositorioProduto.pegarProduto();
    produtos.value = resultado;
    pararCarregamento();
  }

  Future<void> pegarLoja() async {
    iniciarCarregamentoLoja();
    final resultado = await repositorioLoja.pegarLoja();
    loja.value = resultado;
    pararCarregamento();
  }

  // void filtrarProdutos(String valor) async {
  //   iniciarCarregamento();
  //   final result = await repositorioProduto.getProdutoFiltrado(valor);
  //   produtos.value = result;
  //   pararCarregamento();
  // }

  void removerQuantidade(int valor) {
    if (quantidadeParaAdicionar.value > 1) {
      quantidadeParaAdicionar.value -= valor;
      notifyListeners();
    }
  }

  void adicionarQuantidade(int valor) {
    quantidadeParaAdicionar.value += valor;
    notifyListeners();
  }

  void resetarQuantidade(int valor) {
    quantidadeParaAdicionar.value = valor;
    notifyListeners();
  }

  void atualizarQuantidadeTotalProdutos(int valor) {
    quantidadeTotalProdutos.value += valor;
    notifyListeners();
  }

  void adicionarValorTotalProdutos(double valor) {
    valorTotalProdutos.value += valor * quantidadeTotalProdutos.value;
    notifyListeners();
  }
}
