import 'package:provider/provider.dart';
import '../pages/pagina_avaliar/controller/controlador_pagina_avaliar.dart';
import '../pages/pagina_cadastrar/controller/controlador_pagina_cadastrar.dart';
import '../pages/pagina_carrinho/controller/controlador_pagina_carrinho.dart';
import '../pages/pagina_inicial/controller/controlador_pagina_inicial.dart';
import '../pages/pagina_loja/controller/controlador_pagina_loja.dart';

class AppProviders {
  static final providers = [
    ChangeNotifierProvider<ControladorPaginaInicial>(create: (context) => ControladorPaginaInicial()),
    ChangeNotifierProvider<ControladorPaginaCadastrar>(create: (context) => ControladorPaginaCadastrar()),
    ChangeNotifierProvider<ControladorPaginaAvaliar>(create: (context) => ControladorPaginaAvaliar()),
    ChangeNotifierProvider<ControladorPaginaLoja>(create: (context) => ControladorPaginaLoja()),
    ChangeNotifierProvider<ControladorPaginaCarrinho>(create: (context) => ControladorPaginaCarrinho()),
  ];
}
