import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  TextInputType keyboardType;
  String hintText;
  bool secure;

  CustomTextField({required this.keyboardType , required this.hintText , this.secure = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: Color(0xFFb4c2e4),
      ),
      obscureText: secure,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFb4c2e4),
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFFb4c2e4),
        ),
      ),
    );
  }
}
