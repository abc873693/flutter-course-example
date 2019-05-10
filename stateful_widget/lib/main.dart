import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RadioButtonPage(),
    );
  }
}

class LifeCyclePage extends StatefulWidget {
  @override
  _LifeCyclePageState createState() => _LifeCyclePageState();
}

class _LifeCyclePageState extends State<LifeCyclePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _counter = 0;
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text('生命週期'),
      ),
      body: Center(
        child: FlatButton(
          child: TextField(),
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(LifeCyclePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  var inputController = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class TextInputPage extends StatefulWidget {
  @override
  _TextInputPageState createState() => _TextInputPageState();
}

class _TextInputPageState extends State<TextInputPage> {
  var inputController = TextEditingController();

  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('輸入框'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: inputController,
          ),
          Text(
            text,
          ),
          RaisedButton(
            child: Text(
              '按鈕',
            ),
            onPressed: () {
              setState(() {
                text = inputController.text;
              });
            },
          )
        ],
      ),
    );
  }
}

class SwitchPage extends StatefulWidget {
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  var _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('開關'),
      ),
      body: Column(
        children: <Widget>[
          Checkbox(
            onChanged: (bool value) {
              setState(() {
                _value = value;
              });
            },
            value: _value,
          ),
          // SwitchListTile(
          //   onChanged: (bool value) {
          //     setState(() {
          //       this.value = value;
          //     });
          //   },
          //   value: value,
          //   title: Text('title'),
          //   subtitle: Text('subtitle'),
          // ),
          // Checkbox(
          //   onChanged: (bool value) {
          //     setState(() {
          //       this.value = value;
          //     });
          //   },
          //   value: value,
          // ),
          // CheckboxListTile(
          //   onChanged: (bool value) {
          //     setState(() {
          //       this.value = value;
          //     });
          //   },
          //   value: value,
          //   title: Text('title'),
          //   subtitle: Text('subtitle'),
          // ),
        ],
      ),
    );
  }
}

class RadioButtonPage extends StatefulWidget {
  @override
  _RadioButtonPageState createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  int _groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('單選按鈕'),
      ),
      body: Column(
        children: <Widget>[
          Radio(
            groupValue: _groupValue,
            onChanged: _updateRadio,
            value: 0,
          ),
          Radio(
            groupValue: _groupValue,
            onChanged: _updateRadio,
            value: 1,
          ),
          Radio(
            groupValue: _groupValue,
            onChanged: _updateRadio,
            value: 2,
          ),
        ],
      ),
    );
  }

  _updateRadio(int value) {
    setState(() {
      _groupValue = value;
    });
  }
}
