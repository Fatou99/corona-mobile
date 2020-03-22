import 'package:dribbbledanimation/Screens/restaurant/index.dart';
import 'package:dribbbledanimation/models/rapports.dart';
import 'package:dribbbledanimation/models/rapportsModel.dart';
import 'package:flutter/material.dart';

class ReportDetailPage extends StatelessWidget {

  final Rapport rapport;

  ReportDetailPage(String id) :
    rapport = RapportsUI.getRapportById(id);



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          
        ],
      ),
    );
  }
}
