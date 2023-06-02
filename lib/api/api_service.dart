import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

import '../model/produtos_model.dart';

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

  // BUSCAR PRODUTOS NA API //
  List<ProdutoModel> produtos = [];

  Future<List<ProdutoModel>> receberProdutos() async {
    final queryBuilder = QueryBuilder(ParseObject('Produto'))..orderByAscending('nome');

    final resposta = await queryBuilder.query();

    if (resposta.success) {
      produtos = (resposta.results as List<dynamic>).map(
        (item) {
          return ProdutoModel(
            nome: item['nome'],
            descricao: item['descricao'],
            valor: item['valor'].toDouble(),
            imagem: item['imagem'] != null ? item['imagem'].url : 'https://www.publicdomainpictures.net/pictures/260000/nahled/loading-symbol.jpg',
          );
        },
      ).toList();
      return produtos;
    } else {
      throw resposta.error!.message;
    }
  }
}
