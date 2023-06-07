import 'package:flutter/material.dart';

class PerfilLojaNomeTipo extends StatelessWidget {
  final String lojaNome, lojaTipo;
  const PerfilLojaNomeTipo({super.key, required this.lojaNome, required this.lojaTipo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(lojaNome, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(lojaTipo, style: const TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
