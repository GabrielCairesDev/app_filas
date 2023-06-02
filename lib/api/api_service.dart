import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class Api {
  // CARREGAR OS DADOS DA API //
  Future<void> carregarApi() async {
    WidgetsFlutterBinding.ensureInitialized();

    const keyApplicationId = 'xrIfq2R4osgDCQouGOPYvGAkV9W8NrCCkb29LLjf';
    const keyClientKey = 'tW2wtrOXyBAx5wAR4O67bvhi4CJGxJwBtADJOLdA';
    const keyParseServerUrl = 'https://parseapi.back4app.com';

    await Parse().initialize(keyApplicationId, keyParseServerUrl, clientKey: keyClientKey, autoSendSessionId: true);

    print('Api Carregada!');
  }

  // SALVAR UM PRODUTO NA API //
  Future<void> salvarProduto(String nome, String description, double valor) async {
    final product = ParseObject('Produto')
      ..set('nome', nome)
      ..set('descricao', description)
      ..set('valor', valor);

    final response = await product.save();

    if (response.success) {
      print('Produto salvo com sucesso!');
    } else {
      print('Erro ao salvar o produto: ${response.error!.message}');
    }
  }

  // BUSCAR PRODUTOS NA API //
  List<ParseObject> produtos = [];
  Future<List<ParseObject>> receberProdutos() async {
    final queryBuilder = QueryBuilder(ParseObject('Produto'))..orderByAscending('nome');

    final resposta = await queryBuilder.query();

    if (resposta.success) {
      produtos = resposta.results as List<ParseObject>;
      return produtos;
    } else {
      throw resposta.error!.message;
    }
  }
}
