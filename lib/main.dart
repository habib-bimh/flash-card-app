import 'package:flashcards_app/flashcard.dart';
import 'package:flashcards_app/flashcard_view.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<FlashCard> _flashCard= [
    FlashCard(question: "what programming language use is flutter?", answer: "dart"),
    FlashCard(question: "You love flutter?", answer: 'yes'),
    FlashCard(question: 'You blive your selfe?', answer: "yes")
  ];
  int _curentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child: FlipCard(
                  front: FlashcardView(
                      text: _flashCard[_curentindex].question, key: null),
                  back: FlashcardView(
                      text: _flashCard[_curentindex].answer, key: null),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton.icon(
                    onPressed: showpreCard,
                    icon: Icon(Icons.chevron_left),
                    label: Text("Prev"),),
                  OutlinedButton.icon(
                    onPressed: showNextcard,
                    icon: Icon(Icons.chevron_right),
                    label: Text("Next"),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  void showNextcard() {
    setState(() {
      _curentindex =
      _curentindex + 1 < _flashCard.length ? _curentindex + 1 : 0;
    });
  }
  void showpreCard(){
    setState(() {
      _curentindex=
      (_curentindex -1 >= 0 ) ? _curentindex - 1 : _flashCard.length-1;
    });
  }
}

