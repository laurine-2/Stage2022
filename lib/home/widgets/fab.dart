// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:home_page/constants.dart';

class BuildFAB extends StatefulWidget {
  const BuildFAB({Key? key}) : super(key: key);

  @override
  _BuildFABState createState() => _BuildFABState();
}

class _BuildFABState extends State<BuildFAB> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40.0),
                  const Text(
                    "Shop by",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.deepOrange,
                      )
                    ],
                  ),
                  SizedBox(height: Constants.kPadding),
                  _buildCategory(
                    category: "Books",
                    iconData: Icons.book,
                    color: Colors.blue,
                  ),
                  _buildCategory(
                    category: "video games",
                    iconData: Icons.sports_esports,
                    color: Colors.deepOrange,
                  ),
                  _buildCategory(
                    category: "Music & Movies",
                    iconData: Icons.movie,
                    color: Colors.blue,
                  ),
                  _buildCategory(
                    category: "Grocery",
                    iconData: Icons.local_grocery_store,
                    color: Colors.cyan,
                  ),
                  _buildCategory(
                    category: "Livraison a domicil",
                    iconData: Icons.home,
                    color: Colors.yellow.shade100,
                  ),
                  // 06 categorie
                  // pour plus d'obtion
                  SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
          ),
        );
      },
      backgroundColor: Colors.white,
      child: const Icon(
        Icons.list_alt_rounded,
        color: Colors.blue,
      ),
    );
  }

  Widget _buildCategory({
    required String category,
    required IconData iconData,
    required Color color,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Constants.kPadding,
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: double.infinity,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 2 * Constants.kPadding,
            children: [
              CircleAvatar(
                backgroundColor: color,
                child: Icon(
                  iconData,
                  color: Colors.white,
                ),
              ),
              Text(
                category,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
