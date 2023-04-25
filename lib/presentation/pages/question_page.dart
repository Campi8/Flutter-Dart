import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {

  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("QUIZ - QUESTION"),
        ),
        body: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0, // if ternario _visible condiçao, 1.0 true, : senao, 0.0 false;
            duration: const Duration(milliseconds: 500),

            child: Column(
              children: [
                const Expanded(
                    flex: 1,
                    child: Text("Qual a cor Predominante do Tubarao Branco"),
                  ),

                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [

                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _visible =false;
                            });
                          },
                          child: const Text("Cinza"),
                        ),

                         ElevatedButton(
                          onPressed: () {

                          },
                          child: const Text("Branco"),
                        )

                      ],
                    ),
                  )
              ],
              ),
        )
    );
  }
}