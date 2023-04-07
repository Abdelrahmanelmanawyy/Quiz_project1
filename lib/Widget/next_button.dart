import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, required this.nextQuestion});
  final VoidCallback nextQuestion;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextQuestion,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 232, 139, 10),
            borderRadius: BorderRadiusDirectional.circular(10)),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: const Text(
          'next question',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
