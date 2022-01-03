import 'package:flutter/material.dart';
import 'constant.dart';
import 'resultPage.dart';

class bottomButton extends StatelessWidget {
  bottomButton(this.bottomText, this.bottomTab);

  final String bottomText;
  final Function() bottomTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: bottomTab,
      child: Container(
        height: kbottomContainerHeight,
        width: double.infinity,
        color: kbottomContainerColor,
        child: Center(
          child: Text(
            bottomText,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
