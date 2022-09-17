// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:home_page/constants.dart';

List<Widget> buildHeader() => [
      Padding(
        padding: const EdgeInsets.only(
          left: 2 * Constants.kPadding,
          top: Constants.kPadding,
        ),
        child: Text(
          "Bookshelf",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 2 * Constants.kPadding,
          vertical: Constants.kPadding,
        ),
        child: Text(
          "welcome flutter Mappers",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
    ];
