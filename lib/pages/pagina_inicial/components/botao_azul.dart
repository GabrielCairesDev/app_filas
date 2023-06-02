import 'package:flutter/material.dart';

class BotaoAzul extends StatelessWidget {
  const BotaoAzul({super.key, required this.texto, required this.onPressed});
  final String texto;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor: Colors.blue,
          fixedSize: Size(MediaQuery.of(context).size.width, 58),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(
        texto,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 21,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
