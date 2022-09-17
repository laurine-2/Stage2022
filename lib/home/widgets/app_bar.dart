import 'package:flutter/material.dart';
import 'package:home_page/constants.dart';

AppBar buildAppBar() => AppBar(
      iconTheme: IconThemeData(color: Colors.deepOrange.shade900),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      leading: Icon(
        Icons.person_outline_rounded,
        color: Colors.deepOrange.shade900,
      ),
      title: Container(
        height: 30,
        width: 200,
        padding: EdgeInsets.all(2),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Rechercher",
            hintStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.normal,
                color: Colors.grey),
            fillColor: Colors.black.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(
              Icons.search,
              size: 13,
            ),
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none),
          ),
        ),
      ),
      actions: [
        Icon(Icons.qr_code_scanner_outlined, color: Colors.deepOrange.shade900),
        Padding(padding: EdgeInsets.only(left: 10)),
        Icon(Icons.notifications, color: Colors.deepOrange.shade900),
        Padding(padding: EdgeInsets.only(left: 10)),
      ],
    );
