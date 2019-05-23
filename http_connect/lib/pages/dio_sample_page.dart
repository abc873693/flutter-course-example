import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:http_connect/models/notification_model.dart';
import 'package:http_connect/widgets/notification_widget.dart';

class DioSamplePage extends StatefulWidget {
  @override
  _DioSamplePageState createState() => _DioSamplePageState();
}

class _DioSamplePageState extends State<DioSamplePage> {
  Future<List<NotificationModel>> future;

  @override
  void initState() {
    future = getData();
    super.initState();
  }

  Future<List<NotificationModel>> getData() async {
    List<NotificationModel> notificationModels = [];
    var url = 'https://kuas.grd.idv.tw:14769/latest/notifications/1';
    var response = await Dio().get(url);
    for (var i in response.data['notification']) {
      notificationModels.add(NotificationModel.fromJson(i));
    }
    return notificationModels;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('最新消息'),
      ),
      body: FutureBuilder<List<NotificationModel>>(
        future: future, 
        builder: (BuildContext context,
            AsyncSnapshot<List<NotificationModel>> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('Press button to start.');
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Text('Awaiting result...');
            case ConnectionState.done:
              if (snapshot.hasError) return Text('Error: ${snapshot.error}');
              return ListView.builder(itemBuilder: (_, index) {
                return NotificationWidget(model: snapshot.data[index]);
              });
          }
        },
      ),
    );
  }
}
