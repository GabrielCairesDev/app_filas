class ProdutosModel {
  final String produtoNome, produtoDescricao, produtoImagem;
  final double produtoPreco;
  int produtoQuantidadeCarrinho;

  ProdutosModel({
    required this.produtoNome,
    required this.produtoDescricao,
    required this.produtoPreco,
    required this.produtoImagem,
    required this.produtoQuantidadeCarrinho,
  });
}
