import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'About App',
            style: TextStyle(
              fontFamily: 'Gotham',
              fontSize: 25.0,
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          color: Colors.yellow,
          child: Text(
              'This app was created using flutter, using basic flutter widgets. \n\nBy Karan Sreedhar',
              style: TextStyle(
                fontFamily: 'Font',
                fontSize: 30.0,
          ),
          ),
          ),
        ),
      );
  }
}
