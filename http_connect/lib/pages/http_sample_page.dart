import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http_connect/models/notification_model.dart';
import 'package:http_connect/widgets/notification_widget.dart';

class HttpSamplePage extends StatefulWidget {
  @override
  _HttpSamplePageState createState() => _HttpSamplePageState();
}

class _HttpSamplePageState extends State<HttpSamplePage> {
  String str = '';
  Future<List<NotificationModel>> future;
  List<NotificationModel> list = [];
  @override
  void initState() {
    future = getData();
    super.initState();
  }

  Future<List<NotificationModel>> getData() async {
    List<NotificationModel> notificationModels = [];
    var url = 'https://kuas.grd.idv.tw:14769/latest/notifications/1';
    var response = await http.get(url);
    Utf8Decoder utf8decoder = Utf8Decoder();
    String str = utf8decoder.convert(response.bodyBytes);
    Map<String, dynamic> json = jsonDecode(str);
    if (str != '') {
      for (var i in json['notification']) {
        notificationModels.add(NotificationModel.fromJson(i));
      }
    }
    return notificationModels;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http get'),
      ),
      body: FutureBuilder(
        future: future,
        builder: (BuildContext context,
            AsyncSnapshot<List<NotificationModel>> snapshot) {
          print(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return NotificationWidget(
                  model: snapshot.data[index],
                );
              },
              itemCount: snapshot.data.length,
            );
          }
        },
      ),
    );
  }
}
