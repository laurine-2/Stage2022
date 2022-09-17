import 'package:flutter/material.dart';

displayDialog2(BuildContext context, String text) {
  Size size = MediaQuery.of(context).size;
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
            constraints: BoxConstraints(maxHeight: 180),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 14,
                          ),
                          backgroundColor: Colors.red,
                          radius: 13,
                        ),
                      ),
                    ],
                  ),
                  // Text(
                  //   "Asso’o, Connecte toi !",
                  //   style: TextStyle(
                  //     fontFamily: font,
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.bold,
                  //     fontStyle: FontStyle.normal,
                  //   ),
                  //   textAlign: TextAlign.left,
                  // ),
                  Text(
                    "Erreur",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  // Text(
                  //   "de ways",
                  //   style: TextStyle(
                  //     fontFamily: font,
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.bold,
                  //     fontStyle: FontStyle.normal,
                  //   ),
                  //   textAlign: TextAlign.left,
                  // ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 13,
                      // fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                ],
              ),
            ),
          ),
        );
      });
}
