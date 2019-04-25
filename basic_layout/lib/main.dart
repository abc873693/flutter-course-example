import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
      //將 ExpandPage() 換成對應的頁面
      home: ExpandPage(),
    );
  }
}

class ContainerColorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container only Color'),
      ),
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}

class ContainerColorTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Color and Text'),
      ),
      body: Container(
        color: Colors.amber,
        child: Text('data'),
      ),
    );
  }
}

class ContainerSizePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Color and Text with size'),
      ),
      body: Container(
        color: Colors.amber,
        width: 300,
        height: 200,
        child: Text('data'),
      ),
    );
  }
}

class ContainerAlignmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Color and Text with Alignment'),
      ),
      body: Container(
        color: Colors.amber,
        alignment: Alignment.bottomCenter,
        child: Text('data'),
      ),
    );
  }
}

class ContainerConstraintsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Color and Text with Constraints'),
      ),
      body: Container(
        color: Colors.amber,
        constraints: BoxConstraints(
          minWidth: 100,
          maxHeight: 200,
        ),
        alignment: Alignment.center,
        child: Text('data'),
      ),
    );
  }
}

class ContainerPaddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Color and Text with Padding'),
      ),
      body: Container(
        color: Colors.amber,
        padding: EdgeInsets.all(20),
        child: Text('data'),
      ),
    );
  }
}

class ContainerMarginsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Color and Text with Margin'),
      ),
      body: Container(
        color: Colors.amber,
        margin: EdgeInsets.all(20),
        child: Text('data'),
      ),
    );
  }
}

class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: Row(
        children: <Widget>[
          Text('dataA'),
          Text('dataB'),
          Text('dataC'),
        ],
      ),
    );
  }
}

class ColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colum'),
      ),
      body: Column(
        children: <Widget>[
          Text('dataA'),
          Text('dataB'),
          Text('dataC'),
        ],
      ),
    );
  }
}

class RowMainAxisAlignmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row - MainAxisAlignment'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('dataA'),
          Text('dataB'),
          Text('dataC'),
        ],
      ),
    );
  }
}

class ExpandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expand'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(color: Colors.red),
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.green),
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.blue),
          ),
          RaisedButton(
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class SingleChildScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollViewPage'),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: <Widget>[
            Text('dataA'),
            Text('dataB'),
            Text('dataC'),
            Text('dataC'),
            Text('dataC'),
            Text('dataC'),
            Text('dataC'),
            Text('dataC'),
            Text('dataC'),
            Text('dataC'),
            Text('dataC'),
            Text('dataC'),
          ],
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
