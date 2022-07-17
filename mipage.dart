import 'package:flutter/material.dart';
import 'package:bmi_calculator/vic.dart';
import 'package:bmi_calculator/kicy.dart';

class MiPage extends StatefulWidget {
  const MiPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<MiPage> {
  int age = 19;
  int weight = 74;

  int height = 183;
  double maxHeight = 220;
  double minHeight = 50;

  ageIncrement() {
    setState(() {
      age++;
    });
  }

  ageDecrement() {
    setState(() {
      age--;
    });
  }

  weightIncrement() {
    setState(() {
      weight++;
    });
  }

  weightDecrement() {
    setState(() {
      weight--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondary,
      child: Column(
        children: <Widget>[
          AppBar(
            title: const Text("BMI "),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: primary),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(Icons.male),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text('MALE')
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: primary),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Icon(Icons.female),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text('FEMALE')
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), color: primary),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text('HEIGHT'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("$height cm"),
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: minHeight,
                      max: maxHeight,
                      activeColor: const Color.fromARGB(255, 205, 20, 122),
                      inactiveColor: const Color.fromARGB(255, 253, 251, 251),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      semanticFormatterCallback: (double newValue) {
                        return '$newValue.round()';
                      })
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: primary),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('WEIGHT'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("$weight kg"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            onTap: weightDecrement,
                            child: Container(
                              height: 40.0,
                              width: 40.0,
                              margin: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: const Color.fromARGB(204, 15, 40, 48)),
                              child: const Center(
                                child: Text("-"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40.0,
                            width: 40.0,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: const Color.fromARGB(204, 15, 40, 48)),
                            child: InkWell(
                              onTap: weightIncrement,
                              child: const Center(
                                child: Text("+"),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: primary),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('AGE'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("$age"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            onTap: ageDecrement,
                            child: Container(
                              height: 40.0,
                              width: 40.0,
                              margin: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: const Color.fromARGB(204, 15, 40, 48)),
                              child: const Center(
                                child: Text("-"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40.0,
                            width: 40.0,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: const Color.fromARGB(204, 15, 40, 48)),
                            child: InkWell(
                              onTap: ageIncrement,
                              child: const Center(
                                child: Text("+"),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Kicy(
                          height: height,
                          weight: weight,
                        ))),
            child: Container(
              color: primaryButtonColor,
              margin: const EdgeInsets.only(top: 10.0),
              height: MediaQuery.of(context).size.height * 0.1,
              child: const Center(
                child: Text('CALCULATE YOUR BMI'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
