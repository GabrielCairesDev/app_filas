import 'package:flutter/material.dart';

class MeiaPaginaDescricao extends StatelessWidget {
  final String produtoDescricao;
  const MeiaPaginaDescricao({super.key, required this.produtoDescricao});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Text(produtoDescricao),
      ),
    );
  }
}
