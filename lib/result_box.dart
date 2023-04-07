import 'package:flutter/material.dart';

class ResultBox extends StatefulWidget {
  const ResultBox(
      {super.key, required this.score, required this.questionLenght});
  final int score;
  final int questionLenght;

  void  getResult() {
    String result ;

    if (score == questionLenght) {
      result = 'Excellent';
    } else if (score > (questionLenght / 2)) {
      result = 'Fail';
    } else if (score == (questionLenght / 2)) {
      result = 'Good';
    }
    

    
  }

  @override
  State<ResultBox> createState() => _ResultBoxState();
}

class _ResultBoxState extends State<ResultBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 232, 139, 10),
      content: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Score',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${widget.score}/${widget.questionLenght}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          
           
          ],
        ),
      ),
    );
  }
}

class GradingMark extends StatelessWidget {
  const GradingMark({super.key, required this.result});
  final String result;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(result),
    );
  }
}
