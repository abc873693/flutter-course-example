import 'package:flutter/material.dart';

class UseDefaultPage extends StatefulWidget {
  static String routerName = '/detail';

  @override
  _UseDefaultPageState createState() => _UseDefaultPageState();
}

class _UseDefaultPageState extends State<UseDefaultPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Text('頁面2'),
          bottom: TabBar(
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
        ),
      ),
      length: 3,
    );
  }
}
