import 'package:demo/domain/produto.dart';
import 'package:flutter/material.dart';

class Xsalada extends StatelessWidget {
  const Xsalada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("X-salada"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
              Image.network('https://i0.wp.com/anamariabraga.globo.com/wp-content/uploads/2016/11/x-salada-classico.jpg?fit=1200%2C675&ssl=1'),
           


              Row(
                children: [
                  const Text("X SALADA"),
                  const Text("10,50"),

                ],
              ),

              Column(
                // lista
              ),

           
          ],
        ),
      ),
    );
  }
}
