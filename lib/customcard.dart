import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.colour, this.conChild, this.press}) {}

  final Color colour;
  final Widget? conChild;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: conChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
