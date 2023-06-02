import 'package:flutter/material.dart';

class PaginaLojaBanner extends StatelessWidget {
  const PaginaLojaBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
        image: const DecorationImage(
          image: NetworkImage(
              "https://vejasp.abril.com.br/wp-content/uploads/2021/10/Zestzing-Padaria-Artesanal-2.jpg?quality=70&strip=info&w=1280&h=720&crop=1"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
