import 'package:dribbbledanimation/models/ReportRow.dart';
import 'package:dribbbledanimation/models/rapports.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    const Color loginPageBackground = const Color(0xFF736AB7);

    return Row(children: <Widget>[
      Expanded(
  

        child: new ListView.builder(
          shrinkWrap: true,
          itemExtent: 160.0,
          itemCount: 7,
          itemBuilder: (_, index) => new ReportRow(RapportsUI.rapports[index]),
        ),

      ),
    ]);
  }
}
