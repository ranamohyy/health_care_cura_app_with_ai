class NotificationsModel {
  int? notificationId;
  String ?title;
  String ?description;
  String? sentAt;
  bool? isSeen;
  int? notificationType;

  NotificationsModel(
      {required this.notificationId,
        required this.title,
        required this.description,
        this.sentAt,
        this.isSeen,
        this.notificationType});

  NotificationsModel.fromJson(Map<String, dynamic> json) {
    notificationId = json['notificationId'];
    title = json['title'];
    description = json['description'];
    sentAt = json['sentAt'];
    isSeen = json['isSeen'];
    notificationType = json['notificationType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['notificationId'] = notificationId;
    data['title'] = title;
    data['description'] = description;
    data['sentAt'] = sentAt;
    data['isSeen'] = isSeen;
    data['notificationType'] = notificationType;
    return data;
  }
}
