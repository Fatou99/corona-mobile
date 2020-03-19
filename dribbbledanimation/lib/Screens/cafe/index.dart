import 'package:dribbbledanimation/Screens/remerciement.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Cafe extends StatefulWidget {
  @override
  _CafeState createState() => _CafeState();
}

class _CafeState extends State<Cafe> {
  @override
  dynamic im;
  bool isGreen = false;

  Future getLocation() async {
    Location location = new Location();
    GoogleMapController mapController;
    Marker marker;
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.DENIED) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.GRANTED) {
        return;
      }
    }
    _locationData = await location.getLocation();
    print(_locationData);
    print(DateTime.now());
    setState(() {
      isGreen = true;
    });
    //Navigator.push(context,new MaterialPageRoute(builder: (context)=> MyApp2() ));
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      im = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromRGBO(250, 205, 211, 1),
            appBar: AppBar(
              centerTitle: true,
              title: Text("Prenez une photo",
                  style: TextStyle(color: Colors.white)),
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.red, Colors.blueGrey]),
                ),
              ),
            ),
            body: ListView(children: <Widget>[
              Stack(children: <Widget>[
                Container(
                  height: deviceHeight * 0.4,
                  width: deviceWidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/cafe.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ]),
              Container(
                // margin: EdgeInsets.all(3),
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      textColor: Colors.white,
                      highlightColor: Colors.black,
                      child: Text("Ajouter votre emplacement"),
                      color: isGreen == true ? Colors.green : Colors.red,
                      onPressed: getLocation,
                    )
                  ],
                ),
              ),
              Stack(children: <Widget>[
                Container(
                  margin: EdgeInsets.all(3),
                  child: Center(
                    child: Text(
                      "Ajouter une photo",
                      style: TextStyle(height: 5),
                    ),
                  ),
                ),
                Positioned(
                    right: 120, top: 40, child: Icon(Icons.arrow_downward)),
              ]),
              GestureDetector(
                  onTap: () {
                    getImage();
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: im == null
                        ? Icon(Icons.camera_alt, size: 50.0)
                        : Icon(Icons.done, size: 50.0),
                    height: 50,
                    width: 50,
                  )),
              ButtonTheme(
                buttonColor: Colors.blueGrey,
                minWidth: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  splashColor: Colors.red,
                  onPressed: () => Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => MyApp())),
                  child: Text("Envoyer"),
                ),
              )
            ])));
  }
}
