import 'package:flutter/material.dart';

class PaginaAvaliarBotaoEnviarFeedback extends StatelessWidget {
  const PaginaAvaliarBotaoEnviarFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: const Color(0xFF335AF3),
            fixedSize: Size(MediaQuery.of(context).size.width, 58),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        child: const Text(
          'Enviar feedback',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
