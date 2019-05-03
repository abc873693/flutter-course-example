import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DialogPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('頁面1'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('開啟頁面'),
          onPressed: () {
            Navigator.of(context).push(DetailPageRoute());
          },
        ),
      ),
    );
  }
}

class DetailPageRoute extends MaterialPageRoute {
  DetailPageRoute()
      : super(builder: (contenxt) {
          return DetailPage();
        });
}

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('頁面2'),
      ),
    );
  }
}

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('對話框'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('開啟'),
          onPressed: () {
            _showDialog();
          },
        ),
      ),
    );
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('標題'),
            content: Text('內容'),
            actions: <Widget>[
              FlatButton(
                child: Text('取消'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('確定'),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
              )
            ],
          );
        });
  }
}