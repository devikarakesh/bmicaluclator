import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {

  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller:height,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'HEIGHT',
              filled: true,
              fillColor: Colors.white,
            ),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, top: 8.0),
            child: Container(
              height: 30,
              width: 26,
            ),
          ),
          TextField(
            controller:weight,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'WEIGHT',
              filled: true,
              fillColor: Colors.white,
            ),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          TextButton(
            child:Text('CALCULATE'), onPressed: () {
              setState((){
                calculate();
              });
          },
          ),
          Text(result.toString()),
        ],
      ),
    );
  }
}
