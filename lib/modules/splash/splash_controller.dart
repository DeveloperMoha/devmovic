import 'dart:async';
import 'package:flutter/material.dart';

import '../home/home_view.dart';

class SplashController {
  goHome(noOfSeconds, context) {
    Timer(
        Duration(seconds: noOfSeconds),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }
}
