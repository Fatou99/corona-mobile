import 'package:dribbbledanimation/models/rapport.dart';
import 'package:dribbbledanimation/models/rapportsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RapportsUI {
 

  static final List<Rapport> rapports = [
    const Rapport(
        id: "1",
        nom: "Restaurant ouvert",
        icon: Icon(
          Icons.restaurant,
          size: 50.0,
        ),
        url: "/restaurant",
        image: "assets/restaurant.jpg"),
    const Rapport(
        id: "2",
        nom: "Café ouvert",
        icon: Icon(Icons.local_cafe),
        url: "/cafe",
        image: "assets/cafe.jpg"),
    const Rapport(
        id: "3",
        nom: "Rassemblement",
        icon: Icon(Icons.people),
        url: "/gathering",
        image: "assets/rassemblement.jpg"),
    const Rapport(
        id: "4",
        nom: "Dépassement de couvre-feu",
        icon: Icon(Icons.warning),
        url: "/couvreFeu",
        image: "assets/couvreFeu.jpg"),
    const Rapport(
        id: "5",
        nom: "Dépassement de mise en quarantaine",
        icon: Icon(Icons.error),
        url: "/quarantaine",
        image: "assets/quarantaine.jpg"),
    const Rapport(
        id: "6",
        nom: "Dépassement de l'auto-confinement",
        icon: Icon(Icons.home),
        url: "/autoConfinement",
        image: "assets/auto.jpeg"),
  ];

  static Rapport getRapportById(id) {
    return rapports.where((p) => p.id == id).first;
  }
}
