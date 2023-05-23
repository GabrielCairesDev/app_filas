import 'package:flutter/material.dart';

class PesquisarPaginaLoja extends StatelessWidget {
  const PesquisarPaginaLoja({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        hintText: 'Buscar produto...',
        border: const OutlineInputBorder(),
        suffixIcon: Container(
          height: 70,
          width: 80,
          decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(5.0)),
          child: const Icon(Icons.search, color: Colors.white, size: 50),
        ),
      ),
    );
  }
}
