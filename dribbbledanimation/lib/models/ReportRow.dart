import 'package:dribbbledanimation/Routes.dart';
import 'package:dribbbledanimation/models/rapportsModel.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class ReportRow extends StatelessWidget {
  static const Color reportCardC = Colors.pink;
  static const Color reportTitle = const Color(0xFFFFFFFF);

  final Rapport rapport;
  ReportRow(this.rapport);

  @override
  Widget build(BuildContext context) {
      final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    final reportThumbnail = new Container(
      alignment: new FractionalOffset(0.0, 0.5),
      margin: const EdgeInsets.only(left: 24.0),
      child: Material(
        elevation: 10.0,
        shape:
        //  RoundedRectangleBorder(
        //     borderRadius: BorderRadius.only(
        //   topRight: Radius.circular(10.0),
        //   topLeft: Radius.circular(10.0),
        //   bottomLeft: Radius.circular(10.0),
        //   bottomRight: Radius.circular(10.0),
        // )),
         CircleBorder(),
        clipBehavior: Clip.hardEdge,
        color: Colors.transparent,
        child: Ink.image(
          image: AssetImage(rapport.image),
          fit: BoxFit.cover,
          width: deviceWidth,
          height: deviceHeight * 0.4,
          child: InkWell(
            radius: 20.0,
            splashColor: Colors.amber,
  
        // child: new Hero(
        //     tag: 'rapport-icon-${rapport.id}',
            // child: new Image(image: new AssetImage(rapport.image))
            // ),
      ),),)
    );

    final reportCard = new Container(
      margin: const EdgeInsets.only(left: 72.0, right: 24.0),
      decoration: new BoxDecoration(
        color: reportCardC,
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
              color: Colors.black,
              blurRadius: 10.0,
              offset: new Offset(0.0, 10.0))
        ],
      ),
      child: new Container(
        margin: const EdgeInsets.only(top: 16.0, left: 72.0),
        constraints: new BoxConstraints.expand(),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(rapport.nom, style: TextStyle(color: reportTitle, fontSize: 20)),
            // new Text(planet.location, style: Theme.TextStyles.planetLocation),
            new Container(
                color: const Color(0xFF00C6FF),
                width: 24.0,
                height: 1.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0)),
            //logos:
            // new Row(
            //   children: <Widget>[
            //     new Icon(Icons.location_on, size: 14.0,
            //       color: Theme.Colors.planetDistance),
            //     new Text(
            //       planet.distance, style: Theme.TextStyles.planetDistance),
            //     new Container(width: 24.0),
            //     new Icon(Icons.flight_land, size: 14.0,
            //       color: Theme.Colors.planetDistance),
            //     new Text(
            //       planet.gravity, style: Theme.TextStyles.planetDistance),
            //   ],
            // )
          ],
        ),
      ),
    );

    return SafeArea(
      child: Scaffold(

        body: new Container(color: Colors.grey,
          height: 120.0,
          margin: const EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: new FlatButton(
            onPressed: () => Navigator.pushNamed(context, rapport.url),
            child: new Stack(
              children: <Widget>[
                reportCard,
                Positioned.fill(
                  right: deviceWidth*0.6,
                  child: reportThumbnail), 
              ],
            ),
          ),
        ),
      ),
    );
  }

  // _navigateTo(context, String id) {
  //   Routes.navigateTo(context, '/detail/${rapport.id}',
  //       transition: TransitionType.fadeIn);
  // }
}
