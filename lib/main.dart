import 'package:flutter/material.dart';
import 'inputpage.dart';

void main() {
  runApp(
    BmiCalculator(),
  );
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0XFF0A0D22),
        ),
        scaffoldBackgroundColor: Color(0XFF0A0D22),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
