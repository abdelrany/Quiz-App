import 'package:flutter/material.dart';

import 'Question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  var Answerd;
  var index;
  Quiz(this.questions, this.Answerd, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]["Question"] as String),
        ...(questions[index]["answers"] as List).map((element) =>
            Answer(() => Answerd(element["score"] as int), element['answer']))
      ],
    );
  }
}
