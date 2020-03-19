import 'package:flutter/material.dart';

class Restaurant extends StatefulWidget {
  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("restaurant", style:TextStyle(fontSize: 40.0))
      
    );
  }
}