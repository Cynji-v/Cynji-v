// ignore_for_file: unnecessary_this

import 'package:bmi_calculator/vic.dart';
import 'package:flutter/material.dart';

class Kicy extends StatelessWidget {
  final int height;
  final int weight;

  // ignore: use_key_in_widget_constructors
  const Kicy({required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('YOUR RESULT'),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Result(this.height, this.weight),
    );
  }
}

class Result extends StatefulWidget {
  final int height;
  final int weight;

  // ignore: use_key_in_widget_constructors
  const Result(this.height, this.weight);

  @override
  // ignore: library_private_types_in_public_api
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.9,
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: primary),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(headline),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      '${bmiResult(this.widget.height, this.widget.weight)}'),
                ),
                Column(
                  children: const <Widget>[
                    Text('Normal BMI range:'),
                    Padding(
                        padding: EdgeInsets.all(9.0),
                        child: Text(
                          "18.5 - 25 kg/m2",
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(comment),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            color: primaryButtonColor,
            margin: const EdgeInsets.only(top: 10.0),
            height: MediaQuery.of(context).size.height * 0.1,
            child: const Center(
              child: Text('RE-CALCULATE YOUR BMI'),
            ),
          ),
        ),
      ],
    );
  }
}

var comment = '';
var headline = '';
bmiResult(h, w) {
  double bmi = (w / (h * h)) * 10000;

  if (bmi < 18.5) {
    comment = "You are under Weight";
    headline = "UNDERWEIGHT";
  } else if (bmi == 18.5 && bmi <= 25) {
    comment = "You are at a healthy weight.";
    headline = "NORMAL";
  } else if (bmi > 25 && bmi <= 29.99) {
    comment = "You are at overweight.";
    headline = "OVERWEIGHT";
  } else {
    comment = "You are obese.";
    headline = "OBESE";
  }

  return bmi.round();
}
