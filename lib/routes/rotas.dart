import 'package:flutter/material.dart';
import 'package:fura_fila/pages/pagina_loja/page/pagina_loja.dart';
import '../pages/pagina_avaliar/page/paginar_avaliar.dart';
import '../pages/pagina_cadastrar/page/pagina_cadastrar.dart';
import '../pages/pagina_inicial/page/pagina_inicial.dart';

class Rotas {
  static get paginaInicial => "/";
  static get paginaCadastrar => "/pagina_cadastrar";
  static get paginaAvaliar => "/pagina_avaliar";
  static get paginaLoja => "/pagina_loja";

  static Route<dynamic> generatoRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const PaginaInicial());
      case "/pagina_cadastrar":
        return MaterialPageRoute(builder: (context) => const PaginaCadastrar());
      case "/pagina_avaliar":
        return MaterialPageRoute(builder: (context) => const PaginaAvaliar());
      case "/pagina_loja":
        return MaterialPageRoute(builder: (context) => const PaginaLoja());
      default:
        return MaterialPageRoute(builder: (context) => const PaginaInicial());
    }
  }
}
