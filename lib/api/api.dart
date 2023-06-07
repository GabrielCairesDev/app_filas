import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

import '../model/lojas_model.dart';
import '../model/produtos_model.dart';

class Api {
  // CARREGAR OS DADOS DA API //
  Future<void> carregarApi() async {
    WidgetsFlutterBinding.ensureInitialized();

    const keyApplicationId = 'xrIfq2R4osgDCQouGOPYvGAkV9W8NrCCkb29LLjf';
    const keyClientKey = 'tW2wtrOXyBAx5wAR4O67bvhi4CJGxJwBtADJOLdA';
    const keyParseServerUrl = 'https://parseapi.back4app.com';

    await Parse().initialize(keyApplicationId, keyParseServerUrl, clientKey: keyClientKey, autoSendSessionId: true);
  }

  // BUSCAR PRODUTOS NA API //
  List<ProdutoModel> produto = [];
  Future<List<ProdutoModel>> receberListaProdutos() async {
    final queryBuilder = QueryBuilder(ParseObject('Produto'))..orderByAscending('nome');
    final resposta = await queryBuilder.query();

    if (resposta.success) {
      produto = (resposta.results as List<ParseObject>).map(
        (item) {
          return ProdutoModel.parseObcjectFromJson(item);
        },
      ).toList();
      return produto;
    } else {
      throw resposta.error!.message;
    }
  }

  // BUSCAR LOJAS NA API //
  List<LojaModel> loja = [];
  Future<LojaModel?> receberLoja(String nome) async {
    final queryBuilder = QueryBuilder(ParseObject('Loja'))..whereEqualTo('nome', nome);

    final resposta = await queryBuilder.query();

    if (resposta.success) {
      if (resposta.count > 0) {
        final item = resposta.results?.first as ParseObject?;
        return item != null ? LojaModel.parseObcjectFromJson(item) : null;
      } else {
        return null;
      }
    } else {
      throw resposta.error!.message;
    }
  }
}
