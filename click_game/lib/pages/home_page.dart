import 'package:click_game/pages/game_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('點擊小遊戲'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '點擊按鈕開始遊戲',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 16),
            RaisedButton(
              child: Text('開始遊戲'),
              onPressed: () {
                Navigator.push(context, GamePageRoute());
              },
            )
          ],
        ),
      ),
    );
  }
}
