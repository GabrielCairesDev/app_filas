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
        produtoQuantidade: 2,
        produtoPreco: 5.99,
        produtoImagem:
            "https://www.estadao.com.br/resizer/lxbiR0rd29amDzHCxmo_ncAoOkY=/1200x1200/filters:format(jpg):quality(80):focal(322x158:332x168)/cloudfront-us-east-1.images.arcpublishing.com/estadao/UTQSVI4V4RHN7C6BDLZXD67YLE.jpg",
      ),
      ProdutosModel(
        produtoNome: "Bolo de Chocolate",
        produtoDescricao: "Bolo macio de chocolate com cobertura cremosa",
        produtoQuantidade: 4,
        produtoPreco: 24.99,
        produtoImagem:
            "https://www.receitasnestle.com.br/sites/default/files/styles/recipe_detail_desktop/public/srh_recipes/b6a911547d2a4fa622501fbea4a8e3ce.jpg?itok=MzpRtYfi",
      ),
      ProdutosModel(
        produtoNome: "Pastel de Carne",
        produtoDescricao: "Pastel frito recheado com carne moída temperada",
        produtoPreco: 3.49,
        produtoImagem: "https://receitatodahora.com.br/wp-content/uploads/2022/03/pastel-de-carne1.jpg",
        produtoQuantidade: 6,
      ),
      ProdutosModel(
        produtoNome: "Cachorro-Quente",
        produtoDescricao: "Pão, salsicha, molho e acompanhamentos",
        produtoPreco: 8.99,
        produtoImagem: "https://receitinhas.com.br/wp-content/uploads/2022/06/cachorro-quente-tradicional-2.jpg",
        produtoQuantidade: 0,
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
        produtoQuantidade: 0,
      ),
    ];
  }
}
