import 'package:flutter/material.dart';

class Whatisbmi extends StatefulWidget {
  @override
  _WhatisbmiState createState() => _WhatisbmiState();
}

class _WhatisbmiState extends State<Whatisbmi> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('What is BMI?')
      ),
      body: Image.asset('Body-mass-index.jpeg')
    );
  }
}
