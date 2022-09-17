import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:home_page/home/widgets/app_bar.dart';
import 'package:home_page/home/widgets/books_list.dart';
import 'package:home_page/home/widgets/formulaireDemande.dart';
import 'package:home_page/home/widgets/navigation_bar.dart';

import 'widgets/ListLivraison.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void __menuBottom() {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      // maintenant on cree le body
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarousselPub(),
            Ligne2Acceuil(),
            Container(
              height: 180,
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      ElementAcceuil(
                          "assets/images/livraison-de-nourriture.png",
                          "Livraison",
                          "Faite vous livrer de facon professionel", () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FormulaireDemande()));
                      }),
                      Spacer(),
                      ElementAcceuil("assets/images/liste-de-courses.png",
                          "Liste", "Consulter liste des livraison", () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListLivraison()));
                      })
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      ElementAcceuil(
                          "assets/images/paiement-par-carte-de-credit (1).png",
                          "Paiement",
                          "Faite vous livrer de facon professionel", () {
                        print("ok");
                      }),
                      Spacer(),
                      ElementAcceuil(
                          "assets/images/partenariat.png",
                          "Partenaire",
                          "Faite vous livrer de facon professionel", () {
                        print("ok");
                      })
                    ],
                  ),
                ],
              ),
            ),
            // ...buildHeader(),
            // buildSearchBar(),
            // buildIconsList(),
            BuildBookList(),

            // BuildNewBook(),
            Container(
              height: 25,
            )
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: () {
          __menuBottom();
        },
        child: CircleAvatar(
          backgroundColor: Colors.deepOrange.shade900,
          radius: 25,
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),

      bottomNavigationBar: buildNavigationBar(context),
    );
  }
}

class ElementAcceuil extends StatelessWidget {
  ElementAcceuil(this.image, String this.titre, String this.description,
      Function() this.function);
  String image;
  String titre;
  String description;
  Function() function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: 70,
        width: 170,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(color: Colors.grey.shade300),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$titre",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.deepOrange.shade900,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            Row(
              children: [
                Container(
                  width: 120,
                  child: Text(
                    description,
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Spacer(),
                Image.asset(
                  image,
                  width: 20,
                  height: 20,
                  color: Colors.deepOrange.shade900,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Ligne2Acceuil extends StatelessWidget {
  const Ligne2Acceuil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Icon(
            Icons.speaker_notes_outlined,
            size: 13,
          ),
          Spacer(),
          Text("LALALA !!! vous livre tres rapidement a domicile  ...",
              style: TextStyle(
                  fontSize: 12,
                  wordSpacing: 0.9,
                  letterSpacing: 0.2,
                  fontWeight: FontWeight.w300)),
          Spacer(),
          Icon(
            Icons.format_list_bulleted_rounded,
            size: 13,
          ),
        ],
      ),
    );
  }
}

class CarousselPub extends StatelessWidget {
  CarousselPub({
    Key? key,
  }) : super(key: key);

  List<Widget> items = [
    Image.asset("assets/images/img1.jpg"),
    Image.asset("assets/images/img2.jpg"),
    Image.asset("assets/images/img3.jpg"),
    Image.asset("assets/images/img1.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: items,
        options: CarouselOptions(
          height: 180,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          // onPageChanged: (value){return },
          scrollDirection: Axis.horizontal,
        ));
  }
}
