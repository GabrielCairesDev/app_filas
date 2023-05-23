import 'package:fura_fila/pages/pagina_loja/controller/controlador_pagina_loja.dart';
import 'package:provider/provider.dart';
import '../pages/pagina_avaliar/controlador_pagina_avaliar.dart';
import '../pages/pagina_cadastrar/controlador_pagina_cadastrar.dart';
import '../pages/pagina_inicial/controlador_pagina_inicial.dart';

class AppProviders {
  static final providers = [
    ChangeNotifierProvider<ControladorPaginaInicial>(create: (context) => ControladorPaginaInicial()),
    ChangeNotifierProvider<ControladorPaginaCadastrar>(create: (context) => ControladorPaginaCadastrar()),
    ChangeNotifierProvider<ControladorPaginaAvaliar>(create: (context) => ControladorPaginaAvaliar()),
    ChangeNotifierProvider<ControladorPaginaLoja>(create: (context) => ControladorPaginaLoja()),
  ];
}
