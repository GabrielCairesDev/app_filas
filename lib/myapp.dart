import 'package:flutter/material.dart';
import 'routes/rotas.dart';
import 'theme/themeapp.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APP Filas',
      theme: ThemeApp.themeDart,
      initialRoute: '/pagina_loja',
      onGenerateRoute: Rotas.generatoRoute,
    );
  }
}

  // static get paginaInicial => "/";
  // static get paginaCadastrar => "/pagina_cadastrar";
  // static get paginaAvaliar => "/pagina_avaliar";
  // static get paginaLoja => "/pagina_loja";
  // static get paginaLoja => "/pagina_carrinho";