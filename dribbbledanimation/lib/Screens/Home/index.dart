import 'package:flutter/material.dart';
import 'styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/animation.dart';
import 'dart:async';
import '../../Components/AddButton.dart';
import '../../Components/FadeContainer.dart';
import 'package:intl/intl.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
          body: Container(
              child: Text(
        "Page en cours de construction..",
        style: TextStyle(
          fontSize: 50.0,
        ),
        textAlign: TextAlign.center,
      ))),
    );
  }
}
