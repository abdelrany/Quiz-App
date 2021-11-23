import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexQuetions = 0;
  int result = 0;

  final List<Map<String, Object>> _questions = [
    {
      "Question": "what is your fav color?",
      "answers": [
        {"answer": "Blue", "score": 20},
        {"answer": "White", "score": 15},
        {"answer": "Yellow", "score": 10},
        {"answer": "Black", "score": 20}
      ]
    },
    {
      "Question": "what is your fav animale?",
      "answers": [
        {"answer": "Dog", "score": 20},
        {"answer": "Horse", "score": 15},
        {"answer": "Cat", "score": 10},
        {"answer": "Donkey", "score": 20}
      ]
    },

    // "what is your fav color?",
    // "what is your fav animale ?"
  ];
//------------------------function answerd-----------------------------
  void Answerd(int score) {
    setState(() {
      indexQuetions++;
    });
    result += score;
    // result = result + score;

    // print("Next quetions N" + indexQuetions.toString());
    return;
  }

  //-------------------------function answerd-----------------------------
  void reset() {
    setState(() {
      indexQuetions = 0;
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("quiz"),
        ),
        body: Column(
          children: [
            (_questions.length > indexQuetions) //if
                ? Quiz(_questions, Answerd, indexQuetions) // instrection
                : Result(result, reset), // else
          ],
        ),
      ),
    );
  }
}
