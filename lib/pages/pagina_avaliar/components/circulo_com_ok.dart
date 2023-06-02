import 'package:flutter/material.dart';

class PaginaAvaliarCirculoOK extends StatelessWidget {
  const PaginaAvaliarCirculoOK({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      width: double.infinity,
      child: Center(
        child: CircleAvatar(
          backgroundColor: Color(0xFF335AF3),
          radius: 80,
          child: Icon(
            Icons.check,
            size: 100,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
