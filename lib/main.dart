import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/pages/calculator.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/calculator.dart';
import 'package:flutter_app/pages/about.dart';
import 'package:flutter_app/pages/what_is_bmi.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/calculator': (context) => Calculator(),
    '/about': (context) => About(),
    '/bmi': (context) => Whatisbmi(),
  },
));
