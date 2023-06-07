import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class LojaModel {
  final String lojaNome, lojaTipo, lojaImagemBanner, lojaImagemPerfil;

  LojaModel({required this.lojaNome, required this.lojaTipo, required this.lojaImagemBanner, required this.lojaImagemPerfil});

  factory LojaModel.parseObcjectFromJson(ParseObject parseObject) {
    return LojaModel(
      lojaNome: parseObject.get('nome') ?? '',
      lojaTipo: parseObject.get('tipo') ?? '',
      lojaImagemBanner: (parseObject.get('imagemBanner') as ParseFile).url ?? '',
      lojaImagemPerfil: (parseObject.get('imagemPerfil') as ParseFile).url ?? '',
    );
  }
}
