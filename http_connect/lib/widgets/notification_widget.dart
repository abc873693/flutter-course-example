import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http_connect/models/notification_model.dart';
import 'package:share/share.dart';

class NotificationWidget extends StatelessWidget {
  final NotificationModel model;

  const NotificationWidget({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        Share.share('${model.title}');
      },
      child: Column(
        children: <Widget>[
          SizedBox(height: 4),
          Padding(
            child: Text(
              '${model.title}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.all(8),
          ),
          Row(
            children: <Widget>[
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  '${model.department}',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 16,
                  ),
                ),
              ),
              Text(
                '${model.date}',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 8),
            ],
          ),
          SizedBox(height: 8),
          Container(
            color: Colors.grey,
            height: 0.5,
          ),
        ],
      ),
      onTap: () async {
        var url = model.link;
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    );
  }
}
