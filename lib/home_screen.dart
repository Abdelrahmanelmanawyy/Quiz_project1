// ignore_for_file: prefer_final_fields, camel_case_types, unused_field, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_application/question/question_model.dart';
import 'Widget/question_widget.dart';
import 'Widget/next_button.dart';
import 'Widget/option_card.dart';
import 'result_box.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List<Question> _question = [
    Question(id: '1', title: 'What is 2+2', options: {
      '5': false,
      '15': false,
      '4': true,
      '9':false,
    }),
    Question(id: '1', title: 'What is 10+20', options: {
      '60': false,
      '1': false,
      '30': true,
      '5':false,
    }),
    Question(id: '1', title: 'What is 2+9', options: {
      '60': false,
      '1': false,
      '11': true,
      '5':false,
    }),
    Question(id: '1', title: 'What is 2+6', options: {
      '60': false,
      '1': false,
      '8': true,
      '5':false,
    }),
  ];
  //score
  int score = 0;

  //index loop
  int index = 0;
  //check if the user has clicked
  bool isPressed = false;
  //if user already clicked
  bool isAlreadyClicked = false;
  //function to display next question
  void nextQuestion() {
    if (index == _question.length - 1) {
      showDialog(context: context, builder: (ctx) => ResultBox(
        score: score,
        questionLenght: _question.length,
      ));
    } else {
      setState(() {
        index++;
        isPressed = false;
        isAlreadyClicked = false;
      });
    }
  }
  //function calculate the score

  void checkAnswer(bool value) {
    if (isAlreadyClicked) {
      return;
    } else {
      if (value == true) {
        score++;
        setState(() {
          isPressed = true;
          isAlreadyClicked = true;
        });
      } else {
        setState(() {
          isPressed = true;
          isAlreadyClicked = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 232, 139, 10),
        automaticallyImplyLeading: false,
        title: Text(
          'Quiz',
          style: GoogleFonts.poppins(fontSize: 23),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            QuestionWidget(
                indexAction: index,
                question: _question[index].title,
                totaQuestions: _question.length),
            const SizedBox(
              height: 25,
            ),
            for (int i = 0; i < _question[index].options.length; i++)
              GestureDetector(
                onTap: () =>
                    checkAnswer(_question[index].options.values.toList()[i]),
                child: OptionCard(
                  option: _question[index].options.keys.toList()[i],
                  color: isPressed
                      ? _question[index].options.values.toList()[i] == true
                          ? Colors.green
                          : Colors.red
                      : Colors.white,
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: NextButton(
          nextQuestion: nextQuestion,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
    ;
  }
}
