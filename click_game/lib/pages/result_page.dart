import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final int result;

  const ResultPage(this.result);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('遊戲結果'),
      ),
      body: Center(
        child: Text(
          '遊戲結束\n總共點擊 ${widget.result} 次',
          style: TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
