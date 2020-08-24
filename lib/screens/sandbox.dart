import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  Color _color = Colors.blue;
  double _opacity = 1;
  double _margin = 20.0;
  double _width = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.white,
              child: Text("animate width"),
              onPressed: () {
                setState(() {
                  _width = 300.0;
                });
              },
            ),
            RaisedButton(
              color: Colors.white,
              child: Text("animate color"),
              onPressed: () {
                setState(
                  () {
                    _color = Colors.purple;
                  },
                );
              },
            ),
            RaisedButton(
              color: Colors.white,
              child: Text("animate margin"),
              onPressed: () {
                setState(
                  () {
                    _margin = 50.0;
                  },
                );
              },
            ),
            RaisedButton(
              color: Colors.white,
              child: Text("animate opacity"),
              onPressed: () {
                setState(
                  () {
                    _opacity = 0;
                  },
                );
              },
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 3),
              opacity: _opacity,
              child: Text(
                "Hide me",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
