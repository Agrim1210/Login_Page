import 'package:flutter/material.dart';
import './main.dart';
class BelowTitle extends StatelessWidget {
  BelowTitle({@required this.belowTitle});
  final String belowTitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      belowTitle,
      style: TextStyle(
        color: Color(0xFF005CA5),
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
    );
  }
}

class MainTitle extends StatelessWidget {
  MainTitle({@required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Color(0xFF005CA5),
      ),
    );
  }
}