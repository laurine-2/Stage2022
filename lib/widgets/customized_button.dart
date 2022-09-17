import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback? onPressed;
  const CustomizedButton(
      {Key? key,
      this.buttonText,
      this.buttonColor,
      this.onPressed,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 4,
            offset: Offset(4, 8), // Shadow position
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: InkWell(
            onTap: onPressed,
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(width: 1, color: Colors.orange),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                buttonText!,
                style: TextStyle(color: textColor, fontSize: 15),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
