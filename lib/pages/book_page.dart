// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:home_page/constants.dart';
import 'package:home_page/models/book_model.dart';
import 'package:home_page/pages/widgets/book_display.dart';
import 'package:home_page/pages/widgets/description.dart';

class BookPage extends StatefulWidget {
  BookPage({required this.book});
  final BookModel book;

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Colors.black87,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(Constants.kPadding),
            child: IconButton(
              onPressed: () {
                //modificaton du coeur de la deuxieme page
                setState(() {
                  widget.book.favorite = !widget.book.favorite;
                });
              },
              icon: Icon(
                widget.book.favorite ? Icons.favorite : Icons.favorite_border,
                color: Colors.deepOrange.shade900,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Constants.kPadding * 4,
            ),
            child: Column(
              children: [
                ...buildBookDisplay(book: widget.book),
                ...buildDescription(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
