import 'package:bottom_dialog/bottom_dialog.dart';
import 'package:flutter/material.dart';

import 'formulaireDemande.dart';

void __menuBottom(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Color(0XFF737373),
          child: SingleChildScrollView(
              child: Container(
            color: Colors.white,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormulaireDemande()));
                  },
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/livraison-de-nourriture.png",
                      color: Colors.deepOrange.shade900,
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      "Demande de livraison",
                      textScaleFactor: .5,
                      style: TextStyle(
                          fontSize: 25,
                          wordSpacing: 0.8,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                InkWell(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/liste-de-courses.png",
                      color: Colors.deepOrange.shade900,
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      "Consulter liste de livraison",
                      textScaleFactor: .5,
                      style: TextStyle(
                          fontSize: 25,
                          wordSpacing: 0.8,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                InkWell(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/paiement-par-carte-de-credit (1).png",
                      color: Colors.deepOrange.shade900,
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      "Consulter liste de paiement",
                      textScaleFactor: .5,
                      style: TextStyle(
                          fontSize: 25,
                          wordSpacing: 0.8,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                InkWell(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/partenariat.png",
                      color: Colors.deepOrange.shade900,
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      "Partenariat",
                      textScaleFactor: .5,
                      style: TextStyle(
                          fontSize: 25,
                          wordSpacing: 0.8,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )),
        );
      });
}
