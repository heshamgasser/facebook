import 'package:flutter/material.dart';

class ActionsWidget extends StatelessWidget {
  String imagePath;
  String action;
  MainAxisAlignment align;

  ActionsWidget(
      {required this.imagePath,
      required this.action,
      this.align = MainAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: align,
      children: [
        Image.asset(
          imagePath,
          width: 15,
          height: 15,
        ),
        const SizedBox(width: 5),
        Text(
          action,
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xFF3d3d3d),
          ),
        )
      ],
    );
  }
}
