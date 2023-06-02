import 'package:flutter/material.dart';

class PaginaAvaliarTextoPagamentoConcluido extends StatelessWidget {
  const PaginaAvaliarTextoPagamentoConcluido({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      width: double.infinity,
      child: Center(
        child: Text(
          'Pagamento concluído',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
