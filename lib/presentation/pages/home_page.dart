import 'dart:js_util';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var estilo = theme.textTheme.headline5?.copyWith(
      fontFamily: "Arial",
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text("CARDAPIO"),
        ),
        final SizedBox(),
           Image.network('https://cdn.sistemawbuy.com.br/arquivos/0b6109ec0e3822a25cf65105949c1973/blogitens/divulgue-e-encontre-empresas-em-maringa,lanchonete-aberta-agora-perto-de-mim-em-maringa-581.jpg',
           height: 120,
           width: 120,
           ),

        body: Center(

          
            
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Lanches", style: estilo,),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "");
                }, 
                child: const Text("X- Salada"),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "");
                }, 
                child: const Text("X- Bacon"),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "");
                }, 
                child: const Text("X- Tudo"),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "");
                }, 
                child: const Text("X- Tudo Duplo"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "");
                }, 
                child: const Text("X- egg"),
              ),



            
            ],
          ),
        ),
      ),
    );
  }
}