import 'package:demo/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cardapio",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: "/",
      routes: {
        "/":(context) => const HomePage(),
      },
    );
  }
}