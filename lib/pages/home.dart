import 'package:flutter/material.dart';
import 'package:flutter_app/pages/about.dart';
import 'package:flutter_app/pages/what_is_bmi.dart';
import 'package:flutter_app/pages/calculator.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/': (context) => Home(),
    '/about': (context) => About(),
    '/bmi': (context) => Whatisbmi(),
  },
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        leading: GestureDetector(
        onTap: () {Navigator.pushNamed(context, '/about');
        },
           child: Icon(
            Icons.contact_support_outlined,
          ),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text('Body Mass Index',
          style: TextStyle(
          fontFamily: 'Gotham',
        ),
        ),
        ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text('What is BMI?',
                  style: TextStyle(
                    fontFamily: 'Font',
                    fontSize: 55.0,
          )
        ),
              SizedBox(height: 20),
              Container(
                height:100,
                width: 250,
                child: FlatButton.icon(
                  color: Colors.lightBlue,
                  onPressed: () {
                    Navigator.pushNamed(context, '/bmi');
                  },
                  icon: Icon(
                    Icons.subdirectory_arrow_right,
                  ),
                  label: Text(
                    'Tap to find \n\t\t\t\t\t\tOut',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Font',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(40,0,0,0),
                child: Text('Want to know your BMI?',
                    style: TextStyle(
                      fontFamily: 'Font',
                      fontSize: 45.0,
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height:100,
                width: 300,
                child: FlatButton.icon(
                  color: Colors.cyan,
                    onPressed: () {
                      Navigator.pushNamed(context, '/calculator');
                    },
                    icon: Icon(
                        Icons.subdirectory_arrow_right,
                    ),
                    label: Text(
                        'Tap to begin \n\tCalculating',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Font',
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
