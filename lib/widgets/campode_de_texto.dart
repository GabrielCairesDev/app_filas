import 'package:flutter/material.dart';

class CampoDeTexto extends StatelessWidget {
  const CampoDeTexto({super.key, required this.texto, required this.textFieldControlador, required this.textFieldValidador});

  final String texto;
  final TextEditingController? textFieldControlador;
  final String? Function(String?)? textFieldValidador;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textFieldControlador,
      validator: textFieldValidador,
      style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFEFEFEF),
        hintText: texto,
        hintStyle: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.black),
        border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
