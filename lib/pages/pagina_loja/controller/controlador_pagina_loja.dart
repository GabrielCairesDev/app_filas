import 'package:flutter/material.dart';
import 'package:fura_fila/repositories/produtos/produtos_repositorio.dart';

import '../../../model/produtos_model.dart';

class ControladorPaginaLoja extends ChangeNotifier {
  final ProdutoRepositorio repositorioProduto = ProdutoRepositorioImplementacao();
  ValueNotifier<bool> loading = ValueNotifier<bool>(false);
  ValueNotifier<List<ProdutosModel>> produtos = ValueNotifier<List<ProdutosModel>>([]);
  ValueNotifier<List<ProdutosModel>> produtosFiltrados = ValueNotifier<List<ProdutosModel>>([]);
  ValueNotifier<int> quantidadeTotalProdutos = ValueNotifier<int>(0);
  ValueNotifier<int> quantidadeParaAdicionar = ValueNotifier<int>(1);
  ValueNotifier<double> valorTotalProdutos = ValueNotifier<double>(0);

  void startLoading() {
    loading.value = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifyListeners();
    });
  }

  void stopLoading() {
    loading.value = false;
    notifyListeners();
  }

  Future<void> getProdutos() async {
    startLoading();
    final resultado = await repositorioProduto.getProduto();
    produtos.value = resultado;
    stopLoading();
  }

  void filtrarProdutos(String valor) async {
    startLoading();
    final result = await repositorioProduto.getProdutoFiltrado(valor);
    produtos.value = result;
    stopLoading();
  }

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
