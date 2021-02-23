import 'package:flutter/material.dart';
Size deviceSize;

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double _height=170.0;
  double _weight=75.0;
  double _bmi=0;
  String _condition= '';
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Body Mass Index Calculator',
          style: TextStyle(
          fontFamily: 'Gotham',
        ),
      ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height:deviceSize.height*0.18,
              width:deviceSize.width*9.0,
              child: Card(
                color: Colors.lightBlueAccent[100],
                margin: EdgeInsets.fromLTRB(20.0,20.0,10,0),
                child: Container(
                  height:deviceSize.height*0.18,
                  width:deviceSize.width*9.0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15,10,5,25),
                    child: Text('Adjust the sliders to calculate BMI',
                      style: TextStyle(
                        fontFamily: 'Font',
                        fontSize: 30.0,
                        ),
                      ),
                    ),
                ),
                ),
            ),
            SizedBox(
              height:deviceSize.height*0.18,
              child: Container(
                height:deviceSize.height*1,
                width:deviceSize.width*1,
                child: Row(
                  children: [
                    Container(
                      height:deviceSize.height*0.11,
                      width:deviceSize.width*0.43,
                      child: Card(
                          color: (_bmi > 18.5 && _bmi < 25) ? Colors.green[400] : Colors.red[600],
                        margin: EdgeInsets.fromLTRB(20.0,1.0,10,0),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15,10,5,5),
                          child: Text('Condition  ' + _condition,
                            style: TextStyle(
                              fontFamily: 'Font',
                              fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                    ),
                    Container(
                      height:deviceSize.height*0.15,
                      width:deviceSize.width*0.5,
                      child: Card(
                        color: Colors.amber,
                        margin: EdgeInsets.fromLTRB(80,8,5,40),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10,10,10,10),
                          child: Center(
                            child: Text('BMI:\n\t$_bmi',
                              style: TextStyle(
                                fontFamily: 'Font',
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height:deviceSize.height*0.11,
              width: 385,
              child: Card(color: Colors.greenAccent,
                margin: EdgeInsets.fromLTRB(7,30.0,205,0),
                child: Container(
                  height:deviceSize.height*0.11,
                  width: 385,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,10,10,10),
                    child: Text('Height = $_height',
                      style: TextStyle(
                        fontFamily: 'Font',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height:deviceSize.height*0.02,
            ),
            Slider(
              value: _height,
              min: 80,
              max: 250,
              onChanged: (height){
                setState(() {
                  _height=height;
                });
              },
                divisions: 170,
                label: "$_height",
            ),
            Container(
              height:deviceSize.height*0.11,
              width: 385,
              child: Card(color: Colors.greenAccent,
                margin: EdgeInsets.fromLTRB(7,30.0,205,0),
                child: Container(
                  height:deviceSize.height*0.11,
                  width: 385,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,10,10,10),
                    child: Text('Weight = $_weight',
                      style: TextStyle(
                        fontFamily: 'Font',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Slider(
              value: _weight,
              min: 0,
              max: 120,
              onChanged: (weight){
                setState(() {
                  _weight = weight;
                });
              },
              divisions: 60,
              label: "$_weight",
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
                height:deviceSize.height*0.09,
              child: FlatButton.icon(
                  onPressed: (){
                    setState(() {
                      _bmi=(_weight/((_height/100)*(_height/100))).round().toDouble();
                      if(_bmi>=18.5 && _bmi<=25) {_condition=" Normal";}
                      else if(_bmi>25 && _bmi<=30) {_condition=" Overweight";}
                      else if(_bmi>30) {_condition=" Obesity";}
                      else  {_condition=" Underweight";}
                    });
                  },
                  label: Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Font'
                  ),
              ),
                icon: Icon(Icons.calculate),
                color: Colors.redAccent,
              )
            ),
        ],
            ),
      ),

          );
  }
}
