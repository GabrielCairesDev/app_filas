import 'package:flutter/material.dart';

class ListaProdutoDescricao extends StatelessWidget {
  const ListaProdutoDescricao({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      width: double.infinity,
      child: Text(
        'Pão de queijo é uma delícia típica da culinária brasileira. Feito com polvilho azedo, queijo, ovos e óleo, o pão de queijo tem uma massa macia por dentro e crocante por fora. Ele é perfeito para acompanhar um café quentinho ou um suco gelado. Muito popular em todo o país, o pão de queijo é um lanche irresistível e uma ótima opção para um café da manhã ou lanche da tarde. Experimente essa maravilha da culinária brasileira e se delicie com o sabor único do pão de queijo!',
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(height: 1.2),
      ),
    );
  }
}
