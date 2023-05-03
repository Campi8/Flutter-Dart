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



            
            ],
          ),
        ),

    );
  }
}