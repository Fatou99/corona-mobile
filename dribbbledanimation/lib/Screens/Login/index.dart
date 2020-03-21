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

   Widget openRestaurant(){
      return Container(
  height: deviceHeight*0.1,
  width: deviceWidth,
  child: RaisedButton(
    onPressed: () {
      Navigator.pushNamed(context, '/restaurant');
    },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Color.fromRGBO(158, 14, 64, 0.5)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: deviceWidth, minHeight: deviceHeight*0.1),
        alignment: Alignment.center,
        child: Text(
          "Restaurant ouvert",
          textAlign: TextAlign.center,
          style: TextStyle( 
            // fontFamily: "IndieFlower",
            fontWeight: FontWeight.bold,
            fontSize: 35.0,
              color: Color.fromRGBO(	49, 29, 63, 1)
          ),
        ),
      ),
    ),
  ),
);
    }

   Widget openCafe(){
      return Container(
  height: deviceHeight*0.1,
  width: deviceWidth,
  child: RaisedButton(
     onPressed: () {
      Navigator.pushNamed(context, '/cafe');
    },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Color.fromRGBO(158, 14, 64, 0.5)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: deviceWidth, minHeight: deviceHeight*0.1),
        alignment: Alignment.center,
        child: Text(
          "Café ouvert",
          textAlign: TextAlign.center,
          style: TextStyle( 
            // fontFamily: "IndieFlower",
            fontWeight: FontWeight.bold,
            fontSize: 35.0,
              color: Color.fromRGBO(	49, 29, 63, 1)
          ),
        ),
      ),
    ),
  ),
);
    }

    Widget gathering(){
      return Container(
  height: deviceHeight*0.1,
  width: deviceWidth,
  child: RaisedButton(
     onPressed: () {
      Navigator.pushNamed(context, '/gathering');
    },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Color.fromRGBO(158, 14, 64, 0.5)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: deviceWidth, minHeight: deviceHeight*0.1),
        alignment: Alignment.center,
        child: Text(
          "Rassemblement",
          textAlign: TextAlign.center,
          style: TextStyle(
            // fontFamily: "IndieFlower",
            fontWeight: FontWeight.bold,
            fontSize: 35.0,
              color: Color.fromRGBO(49, 29, 63, 1)
          ),
        ),
      ),
    ),
  ),
);
    }


    return SafeArea(
        child: Scaffold( backgroundColor: 
        Color.fromRGBO(250	,205,	211, 1),
          appBar: AppBar(automaticallyImplyLeading: false,

      centerTitle: true,
        title: Text("covid-19" ,style: TextStyle(color: Colors.white)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Colors.red,
              Colors.blueGrey
            ])          
         ),        
     ),      
 
            // backgroundColor: 
            // Color.fromRGBO(250	,205,	211, 1)
            // Color.fromRGBO(221,160,221,0.6),
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: deviceHeight * 0.5,
                width: deviceWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/docteur.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              // Container(
              //   width: deviceWidth,
              //   height: deviceHeight * 0.5,
              //   decoration: new BoxDecoration(
              //           gradient: new LinearGradient(
              //         colors: <Color>[
              //           const Color.fromRGBO(162, 146, 199, 0.7),
              //           const Color.fromRGBO(51, 51, 63, 0.6),
              //         ],
              //         stops: [0.2, 1.0],
              //         begin: const FractionalOffset(0.0, 0.0),
              //         end: const FractionalOffset(0.0, 1.0),
              //       )),
              // ),
              Container(
                width: deviceWidth,
                height: deviceHeight * 0.5,
                alignment: Alignment.center,
                color: Color.fromRGBO(221, 170, 170, 0.4),
                child: Center(
                  child: Text(
                    'Que voulez-vous signaler?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.0,
                         fontFamily: "MyFlutterApp",
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(	49, 29, 63, 1)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height:10),
          Stack(children: <Widget>[
            Positioned(
                child: Container(
                    width: deviceWidth,
                    height: deviceHeight * 0.1,
                    child: openRestaurant())),
            Positioned(
              left: 20.0,
              top: 20.0,
              child: Icon(
                Icons.restaurant,
                color: Color.fromRGBO(	49, 29, 63, 1),
                size: 35.0,
              ),
            )
          ]),
           SizedBox(height:10),
          Stack(children: <Widget>[
            Positioned(
                child: Container(
                    width: deviceWidth,
                    height: deviceHeight * 0.1,
                    child: openCafe())),
            Positioned(
              left: 20.0,
              top: 20.0,
              child: Icon(
                Icons.local_cafe,
                color: Color.fromRGBO(	49, 29, 63, 1),
                size: 35.0,
              ),
            )
          ]),
           SizedBox(height:10),
          Stack(children: <Widget>[
            Positioned(
                child: Container(
                    width: deviceWidth,
                    height: deviceHeight * 0.1,
                    child: 
                    gathering()
                    
                    )),
            Positioned(
              left: 20.0,
              top: 20.0,
              child: Icon(
                Icons.people,
                color: Color.fromRGBO(	49, 29, 63, 1),
                size: 35.0,
              ),
            )
          ]),
        ],
      ),
    ));
  }
}
