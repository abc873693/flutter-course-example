import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String str = '';

  Map<String, dynamic> json;

  @override
  void initState() {
    getData();
    super.initState();
  }

  Future getData() async {
    var url = 'https://kuas.grd.idv.tw:14769/latest/notifications/1';
    Response response = await Dio().get(url);
    print(str);
    setState(() {
      str = 'a';
      json = response.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('最新消息'),
      ),
      body: ListView(children: _renderWidgets()),
    );
  }

  List<Widget> _renderWidgets() {
    List<Widget> widgets = [];
    if (str != '') {
      for (var i in json['notification']) {
        widgets.add(_notification(i));
      }
    }
    return widgets;
  }

  Widget _notification(Map<String, dynamic> notification) {
    return Column(
      children: <Widget>[
        SizedBox(height: 4),
        Padding(
          child: Text(
            '${notification['info']['title']}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          padding: EdgeInsets.all(8),
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 8),
            Expanded(
              child: Text(
                '${notification['info']['department']}',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 16,
                ),
              ),
            ),
            Text(
              '${notification['info']['date']}',
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16,
              ),
            ),
            SizedBox(width: 8),
          ],
        ),
        SizedBox(height: 8),
        Container(
          color: Colors.grey,
          height: 0.5,
        ),
      ],
    );
  }
}
