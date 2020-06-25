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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text(
                "+1",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              onPressed: null,
            ),
            FlatButton(
              child: Text(
                "-1",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              onPressed: null,
            ),
          ],
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