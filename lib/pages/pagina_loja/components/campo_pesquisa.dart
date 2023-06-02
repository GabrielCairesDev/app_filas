import 'package:flutter/material.dart';

class PaginaLojaBuscarProdutos extends StatelessWidget {
  const PaginaLojaBuscarProdutos({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 0),
          ),
          hintText: 'Buscar produto...',
          filled: true,
          fillColor: Colors.grey.withOpacity(0.3),
          suffixIcon: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(color: const Color(0xFF335AF3), borderRadius: BorderRadius.circular(16)),
            child: const Icon(Icons.search, color: Colors.white, size: 50),
          ),
        ),
      ),
    );
  }
}
