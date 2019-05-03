import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI計算機',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StatefulWidgetPage(),
    );
  }
}

class StatefulWidgetPage extends StatefulWidget {
  @override
  _StatefulWidgetPageState createState() => _StatefulWidgetPageState();
}

class _StatefulWidgetPageState extends State<StatefulWidgetPage> {
  var height = TextEditingController();
  var weight = TextEditingController();
  var result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI計算機'),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              TextField(
                controller: height,
                obscureText: false,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '請輸入身高(cm)',
                  labelText: '身高',
                ),
              ),
              TextField(
                controller: weight,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '請輸入體重(kg)',
                  labelText: '體重',
                ),
              ),
              Text(
                '您的BMI為 $result',
              ),
              RaisedButton(
                child: Text('計算'),
                onPressed: () {
                  setState(() {
                    result = double.parse(weight.text) /
                        pow(double.parse(height.text) / 100.0, 2);
                  });
                },
              )
            ],
          ),
        ));
  }
}