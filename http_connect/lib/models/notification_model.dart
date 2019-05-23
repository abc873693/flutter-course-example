class NotificationModel {
  String title;
  String department;
  String date;
  String link;

  NotificationModel.fromJson(Map<String, dynamic> json) {
    title = json['info']['title'];
    department = json['info']['department'];
    date = json['info']['date'];
    link = json['link'];
  }
}
