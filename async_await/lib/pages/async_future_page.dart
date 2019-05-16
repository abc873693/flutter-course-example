import 'dart:io';

import 'package:flutter/material.dart';

class AsyncFuturePage extends StatefulWidget {
  @override
  _AsyncFuturePageState createState() => _AsyncFuturePageState();
}

class _AsyncFuturePageState extends State<AsyncFuturePage> {
  @override
  void initState() {
    funcA();
    super.initState();
  }

  void funcA() async {
    print('${DateTime.now()}');
    //String str = await getData();
    Future<String> futureStr = getData();
    futureStr.then((String value) {
      print('$value ${DateTime.now()}');
    });
  }

  Future<String> getData() async {
    sleep(Duration(seconds: 1));
    return "ABC";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('異步'),
      ),
      body: Container(),
    );
  }
}
