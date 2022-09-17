// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:home_page/constants.dart';
import 'package:home_page/models/book_model.dart';

List<Widget> buildBookDisplay({required BookModel book}) => [
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 4,
        child: ClipRect(
          child: Image.asset(
            book.secondImage,
            height: 350,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(Constants.kPadding),
        child: Text(
          book.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    ];
