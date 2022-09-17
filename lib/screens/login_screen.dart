import 'package:flutter/material.dart';
import 'package:home_page/home/home_page.dart';
import 'package:home_page/home/widgets/display.dart';
import 'package:home_page/screens/signup_screen.dart';
import 'package:home_page/widgets/customized_button.dart';
import 'package:home_page/widgets/customized_textfield.dart';

import '../services/entrepriseServices.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: BodyConnexion(),
      ),
    );
  }
}

class BodyConnexion extends StatefulWidget {
  BodyConnexion();

  @override
  State<BodyConnexion> createState() => _BodyConnexionState();
}

class _BodyConnexionState extends State<BodyConnexion> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool res = true;

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      //your code goes here
    });
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/log.png",
                  color: Colors.deepOrange.shade900,
                  height: 150,
                  width: 150,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(0.0),
                child: Text("Welcomee back! Glad \n to see you again",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              customizedTextfied(
                myController: _emailController,
                hintText: "Enter your Email",
                isPassword: false,
              ),
              customizedTextfied(
                myController: _passwordController,
                hintText: "Enter your password",
                isPassword: true,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color(0xff6A707C),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              CustomizedButton(
                buttonText: "Login",
                buttonColor: Colors.black,
                textColor: Colors.white,
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    var response = await FormulaireEntreprise().connexion(
                        nomEntreprise: _emailController.text,
                        password: _passwordController.text);
                    if (response.toString() == "500") {
                      displayDialog2(
                          context, "Login ou mots de passe incorrect");
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Login ou mots de passe incorrect")));
                    } else if (response.toString() == "Connexion Internet") {
                      displayDialog2(context, "Pas de connection a internet");
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Pas de connection a internet")));
                    } else {
                      // Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const HomePage()));
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Succes de connexion")));
                      print("succes de connexion");
                      // displayDialog2(
                      //     context, "Envoie effecctuer avec succes");
                    }

                    // Future.delayed(Duration.zero, () async {
                    //   isplayDialog(context);
                    // });
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.height * 0.16,
                      color: Colors.grey,
                    ),
                    const Text("or Login with"),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.height * 0.15,
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
                          Icons.email,
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
                          Icons.gite,
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
                    Text("Don't have an account?",
                        style: TextStyle(
                          color: Color(0xff1E232C),
                          fontSize: 10,
                        )),
                    TextButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const SignUpScreen())),
                      child: Text("   Register Now",
                          style: TextStyle(
                            color: Colors.deepOrange.shade900,
                            fontSize: 18,
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
