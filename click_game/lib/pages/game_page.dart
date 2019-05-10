import 'dart:async';

import 'package:click_game/pages/result_page.dart';
import 'package:flutter/material.dart';

class GamePageRoute extends MaterialPageRoute {
  GamePageRoute()
      : super(builder: (_) {
          return GamePage();
        });
}

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int _count = 0;
  int milliseconds = 5000;

  @override
  void initState() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (milliseconds == 0) {
        timer.cancel();
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) {
            return ResultPage(_count);
          }),
        );
      } else {
        setState(() {
          milliseconds -= 100;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: FlatButton(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '${milliseconds / 1000.0} 秒',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                '$_count',
                style: TextStyle(
                  fontSize: 72,
                ),
              ),
            ],
          ),
          onPressed: () {
            setState(() {
              _count++;
            });
          },
        ),
      ),
    );
  }
}
