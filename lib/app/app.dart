import 'package:demo/presentation/pages/home_page.dart';
import 'package:demo/presentation/pages/x_bacon.dart';
import 'package:demo/presentation/pages/x_egg.dart';
import 'package:demo/presentation/pages/x_salada.dart';
import 'package:demo/presentation/pages/x_tudo.dart';
import 'package:demo/presentation/pages/x_tudoduplo.dart';
import 'package:flutter/material.dart';


class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cardapio",
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),

        initialRoute: "/",
        routes: {
          "/":(context) => const HomePage(),

          "/Xsalada":(context) => const Xsalada(), 

           "Xbacon":(context) => const Xbacon(),

           "Xtudo":(context) => const Xtudo(),
             
           "XtudoDuplo":(context) => const Xtudoduplo(),

            "Xegg":(context) => const Xegg()
              

        },
    );
  }
}