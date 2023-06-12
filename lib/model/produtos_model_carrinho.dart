import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class ProdutoModelCarrinho {
  final String produtoNome, produtoDescricao, produtoImagem;
  final double produtoValor;
  final int produtoQuantidade;
  ProdutoModelCarrinho({
    required this.produtoNome,
    required this.produtoDescricao,
    required this.produtoValor,
    required this.produtoImagem,
    required this.produtoQuantidade,
  });

  factory ProdutoModelCarrinho.parseObcjectFromJson(ParseObject parseObject) {
    return ProdutoModelCarrinho(
      produtoNome: parseObject.get('nome') ?? '',
      produtoDescricao: parseObject.get('descricao') ?? '',
      produtoValor: parseObject.get('valor')?.toDouble() ?? 0.0,
      produtoQuantidade: parseObject.get('quantidade'),
      produtoImagem: (parseObject.get('imagem') as ParseFile).url ?? '',
    );
  }
}
