import 'package:flutter/material.dart';
// import 'package:fura_fila/pages/pagina_carrinho/page/pagina_carrinho.dart';
import 'package:fura_fila/pages/pagina_loja/page/pagina_loja.dart';
import 'package:fura_fila/pages/pagina_teste.dart';
import '../pages/pagina_avaliar/page/paginar_avaliar.dart';
import '../pages/pagina_cadastrar/page/pagina_cadastrar.dart';
import '../pages/pagina_inicial/page/pagina_inicial.dart';

class Rotas {
  static get paginaInicial => "/";
  static get paginaCadastrar => "/pagina_cadastrar";
  static get paginaAvaliar => "/pagina_avaliar";
  static get paginaLoja => "/pagina_loja";
  static get paginaCarrinho => "/pagina_carrinho";
  static get paginaTeste => "/pagina_teste";

  static Route<dynamic> generatoRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const PaginaInicial());
      case "/pagina_teste":
        return MaterialPageRoute(builder: (context) => PaginaTeste());
      case "/pagina_cadastrar":
        return MaterialPageRoute(builder: (context) => const PaginaCadastrar());
      case "/pagina_avaliar":
        return MaterialPageRoute(builder: (context) => const PaginaAvaliar());
      case "/pagina_loja":
        return MaterialPageRoute(builder: (context) => const PaginaLoja());
      case "/pagina_carrinho":
      // return MaterialPageRoute(builder: (context) => const PaginaCarrinho());
      default:
        return MaterialPageRoute(builder: (context) => const PaginaInicial());
    }
  }
}
