import 'package:flutter/material.dart';
import 'package:flt_mem_v1/widgets/answer-widget.dart';
import 'package:flt_mem_v1/widgets/question-widget.dart';

// ignore: must_be_immutable
class Test extends StatefulWidget {
  const Test({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        "idtest": "M09AL0401",
        "codclasa": "09",
        "codmaterie": "AL",
        "codserie": "M09AL04",
        "denumireserie": "Relatiile lui Viete",
        "enunt": "EM09AL0401",
        "var1": "V1M09AL0401",
        "var2": "V2M09AL0401",
        "var3": "V3M09AL0401",
        "var4": "V4M09AL0401",
        "raspuns": "RM09AL0401",
        "path": "09\/AL\/M09AL04\/"
      },
      {
        "idtest": "M09AL0402",
        "codclasa": "09",
        "codmaterie": "AL",
        "codserie": "M09AL04",
        "denumireserie": "Relatiile lui Viete",
        "enunt": "EM09AL0402",
        "var1": "V1M09AL0402",
        "var2": "V2M09AL0402",
        "var3": "V3M09AL0402",
        "var4": "V4M09AL0402",
        "raspuns": "RM09AL0402",
        "path": "09\/AL\/M09AL04\/"
      },
      {
        "idtest": "M09AL0403",
        "codclasa": "09",
        "codmaterie": "AL",
        "codserie": "M09AL04",
        "denumireserie": "Relatiile lui Viete",
        "enunt": "EM09AL0403",
        "var1": "V1M09AL0403",
        "var2": "V2M09AL0403",
        "var3": "V3M09AL0403",
        "var4": "V4M09AL0403",
        "raspuns": "RM09AL0403",
        "path": "09\/AL\/M09AL04\/"
      },
      {
        "idtest": "M09AL0404",
        "codclasa": "09",
        "codmaterie": "AL",
        "codserie": "M09AL04",
        "denumireserie": "Relatiile lui Viete",
        "enunt": "EM09AL0404",
        "var1": "V1M09AL0404",
        "var2": "V2M09AL0404",
        "var3": "V3M09AL0404",
        "var4": "V4M09AL0404",
        "raspuns": "RM09AL0404",
        "path": "09\/AL\/M09AL04\/"
      },
      {
        "idtest": "M09AL0405",
        "codclasa": "09",
        "codmaterie": "AL",
        "codserie": "M09AL04",
        "denumireserie": "Relatiile lui Viete",
        "enunt": "EM09AL0405",
        "var1": "V1M09AL0405",
        "var2": "V2M09AL0405",
        "var3": "V3M09AL0405",
        "var4": "V4M09AL0405",
        "raspuns": "RM09AL0405",
        "path": "09\/AL\/M09AL04\/"
      },
      {
        "idtest": "M09AL0406",
        "codclasa": "09",
        "codmaterie": "AL",
        "codserie": "M09AL04",
        "denumireserie": "Relatiile lui Viete",
        "enunt": "EM09AL0406",
        "var1": "V1M09AL0406",
        "var2": "V2M09AL0406",
        "var3": "V3M09AL0406",
        "var4": "V4M09AL0406",
        "raspuns": "RM09AL0406",
        "path": "09\/AL\/M09AL04\/"
      },
      {
        "idtest": "M09AL0407",
        "codclasa": "09",
        "codmaterie": "AL",
        "codserie": "M09AL04",
        "denumireserie": "Relatiile lui Viete",
        "enunt": "EM09AL0407",
        "var1": "V1M09AL0407",
        "var2": "V2M09AL0407",
        "var3": "V3M09AL0407",
        "var4": "V4M09AL0407",
        "raspuns": "RM09AL0407",
        "path": "09\/AL\/M09AL04\/"
      }
    ];
    void answerQuestion(String answer) {
      setState(() {
        if (data.length > _questionIndex) {
          _questionIndex = _questionIndex + 1;
        }
      });

      print(answer);
    }

    return Container(
        child: Column(
      children: [
        QuestionWidget(
            selectHandler: () =>
                answerQuestion(data[_questionIndex]["var1"].toString()),
            idx: _questionIndex + 1,
            path: data[_questionIndex]["path"],
            enunt: data[_questionIndex]["enunt"],
            var1: data[_questionIndex]["var1"]),
        AnswerWidget(
            selectHandler: () =>
                answerQuestion(data[_questionIndex]["var1"].toString()),
            idx: _questionIndex + 1,
            path: data[_questionIndex]["path"],
            enunt: data[_questionIndex]["enunt"],
            var1: data[_questionIndex]["var1"]),
        AnswerWidget(
            selectHandler: () =>
                answerQuestion(data[_questionIndex]["var2"].toString()),
            idx: _questionIndex + 1,
            path: data[_questionIndex]["path"],
            enunt: data[_questionIndex]["enunt"],
            var1: data[_questionIndex]["var2"]),
        AnswerWidget(
            selectHandler: () =>
                answerQuestion(data[_questionIndex]["raspuns"].toString()),
            idx: _questionIndex + 1,
            path: data[_questionIndex]["path"],
            enunt: data[_questionIndex]["enunt"],
            var1: data[_questionIndex]["raspuns"]),
      ],
    ));
  }
}
