// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'formulaireDemande.dart';

Widget buildNavigationBar(BuildContext context) => BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_outlined),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FormulaireDemande()));
              },
              icon: Icon(Icons.add_shopping_cart),
            ),
          ),
        ],
      ),
    );
