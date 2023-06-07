import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class ProdutoModel {
  final String produtoNome, produtoDescricao, produtoImagem;
  final double produtoValor;
  ProdutoModel({required this.produtoNome, required this.produtoDescricao, required this.produtoValor, required this.produtoImagem});

  factory ProdutoModel.parseObcjectFromJson(ParseObject parseObject) {
    return ProdutoModel(
      produtoNome: parseObject.get('nome') ?? '',
      produtoDescricao: parseObject.get('descricao') ?? '',
      produtoValor: parseObject.get('valor')?.toDouble() ?? 0.0,
      produtoImagem: (parseObject.get('imagem') as ParseFile).url ?? '',
    );
  }
}
