// import 'package:flutter/material.dart';
// import 'package:fura_fila/pages/pagina_carrinho/controller/controlador_pagina_carrinho.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';

// class PaginaCarrinho extends StatefulWidget {
//   const PaginaCarrinho({Key? key}) : super(key: key);

//   @override
//   State<PaginaCarrinho> createState() => _PaginaCarrinhoState();
// }

// class _PaginaCarrinhoState extends State<PaginaCarrinho> {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ControladorPaginaCarrinho>(
//       builder: (_, controladorPaginaCarrinho, __) {
//         final produtosSelecionados = controladorPaginaCarrinho.produtosSelecionados.value;
//         return Scaffold(
//           appBar: AppBar(title: const Text('Loja')),
//           body: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text('Carrinho', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
//                 const SizedBox(height: 20),
//                 ListView.builder(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   itemCount: produtosSelecionados.length,
//                   itemBuilder: (context, index) {
//                     final produto = produtosSelecionados[index];
//                     return Padding(
//                       padding: const EdgeInsets.only(bottom: 10.0),
//                       child: Container(
//                         decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)), color: Colors.grey.withOpacity(0.3)),
//                         height: 100,
//                         child: InkWell(
//                           onTap: () {},
//                           child: Stack(
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                       height: 100,
//                                       width: 100,
//                                       decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.circular(10),
//                                           image: DecorationImage(image: NetworkImage(produto.produtoImagem), fit: BoxFit.cover))),
//                                   const SizedBox(width: 10),
//                                   SizedBox(
//                                     width: MediaQuery.of(context).size.width * 0.63,
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text(produto.produtoNome, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
//                                         Text(produto.produtoDescricao),
//                                         Text(
//                                           NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(double.parse(produto.produtoPreco.toString())),
//                                           style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                                         ),
//                                         Text(produto.produtoQuantidadeCarrinho.toString())
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Align(
//                                 alignment: Alignment.topRight,
//                                 child: IconButton(
//                                   onPressed: () {},
//                                   icon: const Icon(Icons.delete, color: Colors.red),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//           bottomNavigationBar: SizedBox(
//             height: 80,
//             child: Stack(
//               children: [
//                 Container(
//                   height: 80,
//                   decoration: const BoxDecoration(
//                     borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
//                     color: Colors.grey,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             '000 produtos',
//                             style: TextStyle(fontSize: 15),
//                           ),
//                           Text(
//                             NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(999),
//                             style: const TextStyle(fontSize: 25),
//                           ),
//                         ],
//                       ),
//                       const Expanded(child: SizedBox()),
//                       TextButton(
//                         onPressed: () {},
//                         style: TextButton.styleFrom(
//                             backgroundColor: Colors.blue,
//                             fixedSize: const Size(165, 60),
//                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
//                         child: const Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text('Pagar', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
//                             Icon(Icons.arrow_forward_ios, color: Colors.white)
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
