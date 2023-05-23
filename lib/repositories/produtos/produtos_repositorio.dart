import 'package:fura_fila/model/produtos_model.dart';

abstract class ProdutoRepositorio {
  Future<List<ProdutosModel>> getProduto();
  Future<List<ProdutosModel>> getProdutoFiltrado(String produtoNome);
}

class ProdutoRepositorioImplementacao implements ProdutoRepositorio {
  @override
  Future<List<ProdutosModel>> getProduto() async {
    return [
      ProdutosModel(
        produtoNome: "Pão de Queijo",
        produtoDescricao: "Delicioso pão de queijo caseiro",
        produtoPreco: 5.99,
        produtoImagem:
            "https://www.estadao.com.br/resizer/lxbiR0rd29amDzHCxmo_ncAoOkY=/1200x1200/filters:format(jpg):quality(80):focal(322x158:332x168)/cloudfront-us-east-1.images.arcpublishing.com/estadao/UTQSVI4V4RHN7C6BDLZXD67YLE.jpg",
      ),
      ProdutosModel(
        produtoNome: "Bolo de Chocolate",
        produtoDescricao: "Bolo macio de chocolate com cobertura cremosa",
        produtoPreco: 24.99,
        produtoImagem:
            "https://www.receitasnestle.com.br/sites/default/files/styles/recipe_detail_desktop/public/srh_recipes/b6a911547d2a4fa622501fbea4a8e3ce.jpg?itok=MzpRtYfi",
      ),
      ProdutosModel(
        produtoNome: "Pastel de Carne",
        produtoDescricao: "Pastel frito recheado com carne moída temperada",
        produtoPreco: 3.49,
        produtoImagem: "https://receitatodahora.com.br/wp-content/uploads/2022/03/pastel-de-carne1.jpg",
      ),
      ProdutosModel(
        produtoNome: "Cachorro-Quente",
        produtoDescricao: "Pão, salsicha, molho e acompanhamentos",
        produtoPreco: 8.99,
        produtoImagem: "https://receitinhas.com.br/wp-content/uploads/2022/06/cachorro-quente-tradicional-2.jpg",
      ),
      ProdutosModel(
        produtoNome: "Pão de Alho",
        produtoDescricao: "Pão de alho assado com manteiga e temperos",
        produtoPreco: 6.99,
        produtoImagem: "https://www.libergas.com.br/web/wp-content/uploads/2018/07/20161027160743-pao-de-alho-facil-desktop-1200x675.jpg",
      ),
      ProdutosModel(
        produtoNome: "Torta de Frango",
        produtoDescricao: "Torta recheada com frango desfiado e temperos",
        produtoPreco: 18.99,
        produtoImagem: "https://vovopalmirinha.com.br/wp-content/uploads/2019/08/torta-frango-677x336.jpg",
      ),
      ProdutosModel(
        produtoNome: "Empada de Palmito",
        produtoDescricao: "Empada com recheio cremoso de palmito",
        produtoPreco: 4.99,
        produtoImagem:
            "https://www.receitasnestle.com.br/sites/default/files/styles/recipe_detail_desktop/public/srh_recipes/abfa3c4fe07bcc85b2261e1f2828834a.jpg?itok=XVv2QzB6",
      ),
      ProdutosModel(
        produtoNome: "Biscoito de Aveia",
        produtoDescricao: "Biscoitos de aveia crocantes e saborosos",
        produtoPreco: 9.99,
        produtoImagem: "https://cdn0.tudoreceitas.com/pt/posts/8/9/9/biscoitos_de_aveia_faceis_e_rapidos_7998_orig.jpg",
      ),
      ProdutosModel(
        produtoNome: "Rabanada",
        produtoDescricao: "Fatias de pão embebidas em leite, ovos e canela, fritas e polvilhadas com açúcar",
        produtoPreco: 7.49,
        produtoImagem: "https://cdn0.tudoreceitas.com/pt/posts/7/7/6/rabanada_tradicional_677_600_square.jpg",
      ),
      ProdutosModel(
        produtoNome: "Cupcake de Baunilha",
        produtoDescricao: "Cupcake fofo de baunilha com cobertura de buttercream",
        produtoPreco: 3.99,
        produtoImagem: "https://cozinhalegal.com.br/wp-content/uploads/2020/03/Receita-de-Cupcake-de-Baunilha-7-1.jpg",
      ),
    ];
  }

  @override
  Future<List<ProdutosModel>> getProdutoFiltrado(String produtoNome) async {
    return [
      ProdutosModel(
        produtoNome: 'Coxinha',
        produtoDescricao: 'Nibh platea rutrum non malesuada felis netus sagittis risusnon males',
        produtoPreco: 19.99,
        produtoImagem: 'https://dradeborahnunes.com.br/wp-content/uploads/2020/07/Coxinha-de-frango.jpg',
      ),
    ];
  }
}
