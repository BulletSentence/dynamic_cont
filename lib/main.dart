import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "DNC",
    home: Stack (
      children: <Widget>[
        Image.asset(
          "images/bg.jpg",
          fit: BoxFit.cover,
          height: 1000.0, 
        ),
        Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "PPL: 0",
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      "+1",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.yellow,
                      ),
                    ),
                    onPressed: null,
                  ),
                ),
                FlatButton(
                  child: Text(
                    "-1",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.yellow,
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
                color: Colors.yellow,
              )
            ),
          ],
        ),
      ],
    )
  ));
}