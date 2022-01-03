import 'package:flutter/material.dart';
import 'constant.dart';

class IconContent extends StatelessWidget {
  IconContent(this.icon, this.label) {}

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Expanded(
          child: Icon(
            icon,
            size: 70,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
            child: Text(
          label,
          style: kNumberText,
        ))
      ],
    );
  }
}
