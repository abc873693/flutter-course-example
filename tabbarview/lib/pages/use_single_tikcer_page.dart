import 'package:flutter/material.dart';

class UseSingleTickerPage extends StatefulWidget {
  static String routerName = '/detail';

  @override
  _UseSingleTickerPageState createState() => _UseSingleTickerPageState();
}

class _UseSingleTickerPageState extends State<UseSingleTickerPage>
    with SingleTickerProviderStateMixin {
  var controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('頁面2'),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.title),
            ),
            Tab(
              icon: Icon(Icons.content_copy),
            ),
            Tab(
              icon: Icon(Icons.settings),
            )
          ],
        ),
      ),
      drawer: Drawer(),
      body: TabBarView(
        children: <Widget>[
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
        ],
        controller: controller,
      ),
    );
  }
}
