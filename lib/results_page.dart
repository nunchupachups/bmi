import 'package:flutter/material.dart';
import 'package:untitled/formula.dart';
class ResultsPage extends StatefulWidget {
  int weight;
  int height;
  int age;
  ResultsPage({@required this.weight, @required this.height, this.age});

  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  Logic logic=Logic();
  double bmiResult =0;
  @override
  void initState(){
    bmiResult = logic.calculateBMI(widget.height, widget.weight);

    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BMI Results',
              style: TextStyle(
                  fontSize: 30,

              ),
            ),
            Text('${bmiResult.toStringAsFixed(1)}', style: TextStyle(fontSize: 70, color: Colors.blue),)
          ],
        ),
      ),
    );
  }
}
