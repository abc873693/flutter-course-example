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
      home: ImagePage(),
    );
  }
}

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextPage'),
      ),
      body: Container(
        child: Text(
          '資訊研習社\nFlutter社課',
          textAlign: TextAlign.end,
          style: TextStyle(
            color: Colors.amber,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            height: 1.4,
          ),
          maxLines: 2,
        ),
      ),
    );
  }
}

class IconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextPage'),
      ),
      body: Center(
        child: Icon(
          Icons.arrow_back,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImagePage'),
      ),
      body: Container(
        child: Image(
          image: AssetImage('images/doge.jpeg'),
          width: 666,
        ),
        //       Image(
        //   image: AssetImage("images/avatar.png"),
        //   width: 100.0
        // ),
      ),
    );
  }
}

class ImageFitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _image(BoxFit.fill, 'BoxFit.fill'),
        _image(BoxFit.contain, 'BoxFit.contain'),
        _image(BoxFit.cover, 'BoxFit.cover'),
        _image(BoxFit.fitHeight, 'BoxFit.fitHeight'),
        _image(BoxFit.fitWidth, 'BoxFit.fitWidth'),
        _image(BoxFit.scaleDown, 'BoxFit.scaleDown'),
        _image(BoxFit.none, 'BoxFit.none'),
      ],
    );
  }

  _image(BoxFit boxFit, String data) {
    return Container(
      padding: EdgeInsets.all(4),
      child: Row(
        children: <Widget>[
          Image(
            image: AssetImage('images/doge.jpeg'),
            height: 75,
            width: 200,
            fit: boxFit,
          ),
          SizedBox(width: 16),
          Text(data)
        ],
      ),
    );
  }
}

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('按鈕'),
          onPressed: () {},
        ),
        FlatButton(
          child: Text('按鈕'),
          onPressed: () {},
        ),
        OutlineButton(
          child: Text('按鈕'),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.thumb_up),
          onPressed: () => {},
        )
      ],
    );
  }
}
