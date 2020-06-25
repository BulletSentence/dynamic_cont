import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "DNC",
    home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _ppl = 0;
  String _info = "ENTER";

  void changeppl(int delta){
    setState(() {
      _ppl += delta;

      if (_ppl < 0) {
        _info = "WTF?";
      }
      else if (_ppl <= 10) {
        _info = "ENTER";
      }
      else {
        _info = "FULL";
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Stack (
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
              "PPL: $_ppl",
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
                    onPressed: () {
                    changeppl(1);
                    },
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
                  onPressed: (){
                    changeppl(-1);
                  },
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
    );
  }
}
