import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

class AsyncFunctionPage extends StatefulWidget {
  @override
  _AsyncFunctionPageState createState() => _AsyncFunctionPageState();
}

class _AsyncFunctionPageState extends State<AsyncFunctionPage> {
  @override
  void initState() {
    functionA();
    functionB();
    functionC();
    super.initState();
  }

  void functionA() async {
    sleep(Duration(seconds: 1));
    print('A ${DateTime.now()}');
  }

  void functionB() async {
    sleep(Duration(seconds: 1));
    print('B ${DateTime.now()}');
  }

  void functionC() async {
    sleep(Duration(seconds: 1));
    print('C ${DateTime.now()}');
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
