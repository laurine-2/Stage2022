// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_page/constants.dart';

List<Widget> buildDescription() => [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(Constants.kPadding),
          child: SingleChildScrollView(
            child: Text(
              "je suis une fille cool pour travail sur la gestion des livraison j'aime faire de ce projet d'etude un projet d'avenir en fait ce projet je l'aime bien",
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
      // pour le boutton de la deuxieme page
      Padding(
        padding: const EdgeInsets.all(Constants.kPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Schare"),
            TextButton(
              onPressed: () {},
              child: Text("one click purchase"),
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: 4.0,
                  horizontal: Constants.kPadding,
                ),
                minimumSize: Size(5, 5),
                backgroundColor: Colors.deepOrange.shade900,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    ];
