import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String, //null safety
        ),
        ...(questions[questionIndex]['answers'] as List<
                Map<String,
                    Object>>) //Spread operator takes a list and pull values out of it and add them to the surrounding list as indiviual values
            .map((answer) {
          return Answer(() => (answerQuestion(answer['score'])),
              answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
