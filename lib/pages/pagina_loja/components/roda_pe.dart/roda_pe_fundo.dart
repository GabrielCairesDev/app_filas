import 'package:flutter/material.dart';

class RodaPeFundo extends StatelessWidget {
  const RodaPeFundo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.2), spreadRadius: 50, blurRadius: 100, offset: const Offset(0, 3)),
        ],
      ),
    );
  }
}
