import 'package:flutter/material.dart';

class FlashcardView extends StatelessWidget {

  final String text;

  FlashcardView({required Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Center(
        child: Text(text,textAlign: TextAlign.center,),
      ),
    );
  }
}