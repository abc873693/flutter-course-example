import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HttpSamplePage extends StatefulWidget {
  @override
  _HttpSamplePageState createState() => _HttpSamplePageState();
}

class _HttpSamplePageState extends State<HttpSamplePage> {
  String str = '';

  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    var url = 'https://google.com';
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body.runtimeType}');
    setState(() {
      str = response.body;
    });
    //print('Response body: ${jsonDecode(response.body).runtimeType}');
    // Response response2 = await Dio().get(url);
    // print('Response status: ${response2.statusCode}');
    // print('Response body: ${response2.data.runtimeType}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http get'),
      ),
      body: Text(str),
    );
  }
}
