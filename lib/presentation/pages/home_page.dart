import 'package:demo/data/lanche_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //instancia da lista
    final lanches = loadLanches();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cardapio"),
      ),

      //lista para carregar lanches
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),

          itemCount: lanches.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(lanches[index].nome),
                Text(lanches[index].precoFormatado),
              ],
            ),
          ),
        ),
        
    );
  }
}