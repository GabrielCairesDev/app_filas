import 'package:flutter/material.dart';

class MeiaPaginaNome extends StatelessWidget {
  const MeiaPaginaNome({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
      width: double.infinity,
      child: Text(
        'Pão de queijo',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
