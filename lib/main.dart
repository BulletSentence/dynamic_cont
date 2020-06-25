import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "DNC",
    home: Column (
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "PPL: 0",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "ENTER",
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
          ),
        ),
      ],
    ),
  ));
}