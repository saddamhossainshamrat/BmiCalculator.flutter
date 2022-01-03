import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(this.icon, this.onTab);
  final IconData icon;
  final Function() onTab;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTab,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      child: Icon(
        (icon),
        //size: 20,
        //color: Colors.white,
      ),
    );
  }
}
