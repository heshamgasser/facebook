import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {

  String buttonText;
  CustomTextButton({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        buttonText,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
