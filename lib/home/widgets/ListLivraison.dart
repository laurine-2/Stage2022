import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListLivraison extends StatelessWidget {
  const ListLivraison({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepOrange.shade900),
        backgroundColor: Colors.deepOrange.shade200,
        elevation: 0,
        centerTitle: false,
        title: Container(
          child: Text("Liste des livraison"),
        ),
      ),
      body: Container(
        height: size.height,
        child: SingleChildScrollView(
            child: Container(
          height: size.height,
          child: Column(
            children: [
              Card(
                child: ListTile(
                  leading: FlutterLogo(size: 56.0),
                  title: Text('Two-line ListTile'),
                  subtitle: Text('Here is a second line'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Three-line ListTile'),
                  subtitle: Text(
                      'A sufficiently long subtitle warrants three lines.'),
                  trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
