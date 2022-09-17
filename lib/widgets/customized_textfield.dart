import 'package:flutter/material.dart';

class customizedTextfied extends StatefulWidget {
  final TextEditingController myController;
  final String? hintText;
  final bool? isPassword;
  const customizedTextfied(
      {Key? key, required this.myController, this.hintText, this.isPassword})
      : super(key: key);

  @override
  State<customizedTextfied> createState() => _customizedTextfiedState();
}

class _customizedTextfiedState extends State<customizedTextfied> {
  void _change() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Entrer l\'infomation ';
            }
            return null;
          },
          keyboardType: widget.isPassword!
              ? TextInputType.visiblePassword
              : TextInputType.emailAddress,
          enableSuggestions: widget.isPassword! ? false : true,
          autocorrect: widget.isPassword! ? false : true,
          obscureText: widget.isPassword ?? true,
          controller: widget.myController,
          decoration: InputDecoration(
            suffixIcon: widget.isPassword!
                ? IconButton(
                    icon: const Icon(Icons.remove_red_eye, color: Colors.grey),
                    onPressed: () {},
                  )
                : null,
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffE8ECF4), width: 1),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffE8ECF4), width: 1),
                borderRadius: BorderRadius.circular(10)),
            fillColor: const Color(0xffE8ECF4),
            filled: true,
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
