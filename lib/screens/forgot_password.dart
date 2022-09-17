import 'package:flutter/material.dart';
import 'package:home_page/widgets/customized_button.dart';
import 'package:home_page/widgets/customized_textfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(25),
          height: MediaQuery.of(context).size.height,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Forgot password?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Dont worry it occurs tu us all. we will send you a link to reset your password",
                style: TextStyle(
                  color: Color(0xff8392A1),
                  fontSize: 15,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            customizedTextfied(
              myController: _emailController,
              hintText: "Enter your Email",
              isPassword: false,
            ),
            Padding(padding: EdgeInsets.all(15)),
            CustomizedButton(
              buttonText: "Send Code",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(68, 8, 8, 8.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Remember password?",
                      style: TextStyle(
                        color: Color(0xff1E232C),
                        fontSize: 15,
                      )),
                  InkWell(
                    onTap: (() {}),
                    child: const Text("   Login ",
                        style: TextStyle(
                          color: Color(0xff35C2C1),
                          fontSize: 15,
                        )),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
