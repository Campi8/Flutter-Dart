import 'package:flutter/material.dart';
import 'package:quiz/data/question_repository.dart';
import 'package:quiz/domain/question.dart';
import 'package:quiz/widgets/question_option_widget.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {

  late bool _visible;
  late List<Question> _questions;
  late Question _question;
  late int _position;
  late int _correctAnswers;

    @override
  void initState() {
    super.initState();

    _visible = true;
    _questions = loadQuestions();
    _position = 0;

    _question = _questions[_position];
    _correctAnswers = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("QUIZ - QUESTION"),
        ),

        body: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0, // if ternario _visible condiçao, 1.0 true, : senao, 0.0 false;
            duration: const Duration(milliseconds: 500),

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [

                  Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(_question.text)
                        ),
                    ),

                    Expanded(
                      flex: 1,
                      child: Column(
                        children: _question.answers().map((e) => QuestionOption(text: e.text, action: onAnwser)).toList(),
                      ),
                    ),
                ],
                ),
            ),
        )
    );
  }

  void onAnwser(String text){

    final correct = _question.isCorrect(text);
    final message = correct ? "Parabuains" : "Zero pra Voce";

    if (correct){
      _correctAnswers++;
    }

    var snackbar = SnackBar(content: Text(message));

    ScaffoldMessenger.of(context).showSnackBar(snackbar);


      final position = _position + 1;

     if(position >= _questions.length){
        Navigator.pushNamed(
          context,
          "/finish",
          arguments: "voce acertou $_correctAnswers de ${_questions.length}"
          );
        return;
      }


   Future.delayed(const Duration(milliseconds: 500), (){
     setState(() {
      _visible = false;
    });

    setState(() {
      _position = position;
      _question = _questions[_position];
      _visible = true;

    });
    });



   

  }


}