import 'package:quiz/domain/answer.dart';
import 'package:quiz/domain/question.dart';


List<Question> loadQuestions(){
  return <Question>[

    Question(
      text: "Qual a cor predominante do tubarão branco",
      a: Answer(text: "BRANCO", correct: true),
      b: Answer(text: "CINZA", correct: false),
      c: Answer(text: "PRETO", correct: false),
      d: Answer(text: "AZUL", correct: false),
      e: Answer(text: "ROSA", correct: false),
    ),

     Question(
      text: "Qual a cor do cabelo da kamily",
      a: Answer(text: "vermelho", correct: false),
      b: Answer(text: "muito vermelho", correct: true),
      c: Answer(text: "preto", correct: false),
      d: Answer(text: "azul", correct: false),
      e: Answer(text: "rosa", correct: false),
    ),

     Question(
      text: "Quanto é 3 + 3",
      a: Answer(text: "6", correct: true),
      b: Answer(text: "2", correct: false),
      c: Answer(text: "7", correct: false),
      d: Answer(text: "22", correct: false),
      e: Answer(text: "12", correct: false),
    ),




  ];
}