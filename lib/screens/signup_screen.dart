import 'package:flutter/material.dart';
import 'package:home_page/services/entrepriseServices.dart';
import 'package:home_page/widgets/customized_button.dart';
import 'package:home_page/widgets/customized_textfield.dart';

import '../home/widgets/display.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _nomController = TextEditingController();
  TextEditingController _registreCommerceController = TextEditingController();
  TextEditingController _carteContribuableController = TextEditingController();
  TextEditingController _nonRedevanceController = TextEditingController();
  TextEditingController _passwordeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text("Hello! Register to get \n started",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ]),
                    customizedTextfied(
                      myController: _nomController,
                      hintText: "Nom de l'entreprise",
                      isPassword: false,
                    ),
                    customizedTextfied(
                      myController: _registreCommerceController,
                      hintText: "Registre commerce",
                      isPassword: false,
                    ),
                    customizedTextfied(
                      myController: _carteContribuableController,
                      hintText: "numero Contribuable",
                      isPassword: false,
                    ),
                    customizedTextfied(
                      myController: _nonRedevanceController,
                      hintText: "non redevance",
                      isPassword: false,
                    ),
                    customizedTextfied(
                      myController: _passwordeController,
                      hintText: "mot de passe",
                      isPassword: true,
                    ),
                    CustomizedButton(
                        buttonText: "Register",
                        buttonColor: Colors.black,
                        textColor: Colors.white,
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            var response = await FormulaireEntreprise()
                                .inscription(
                                    nomEntreprise: _nomController.text,
                                    registreCommerce:
                                        _registreCommerceController.text,
                                    carteContribuable:
                                        _carteContribuableController.text,
                                    nonRedevance: _nonRedevanceController.text,
                                    password: _passwordeController.text);

                            if (response.toString() == "500") {
                              displayDialog2(
                                  context, "Cette utilisateur existe deja");
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "Login ou mots de passe incorrect")));
                            } else if (response.toString() ==
                                "Connexion Internet") {
                              displayDialog2(
                                  context, "Pas de connection a internet");
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "Pas de connection a internet")));
                            } else {
                              // Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const LoginScreen()));
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Succes de connexion")));
                              print("succes de connexion");
                              // displayDialog2(
                              //     context, "Envoie effecctuer avec succes");
                            }
                            // isplayDialog(context);
                          }
                        }),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.height * 0.15,
                            color: Colors.grey,
                          ),
                          const Text("or Register with"),
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.height * 0.13,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.facebook,
                                color: Colors.deepOrange.shade900,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.whatsapp,
                                color: Colors.deepOrange.shade900,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.apple,
                                color: Colors.deepOrange.shade900,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(48, 8, 8, 8.0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("Already have an account?",
                              style: TextStyle(
                                color: Color(0xff1E232C),
                                fontSize: 15,
                              )),
                          InkWell(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const LoginScreen()));
                            }),
                            child: const Text("   Login Now",
                                style: TextStyle(
                                  color: Color(0xff35C2C1),
                                  fontSize: 15,
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
