import 'dart:ui';

class NotificationModel{
  String? title;
  Color BgColor;
  NotificationModel({
    this.title,
     required this.BgColor
  });
  static List<NotificationModel> notificationModel=[

    NotificationModel(title: "Interior Spa Delivered",BgColor:Color(0xffD6F6FF)),
    NotificationModel(title: "Interior Spa Delivered",BgColor:Color(0xffFAF0DB)),
    NotificationModel(title: "Interior Spa Delivered",BgColor:Color(0xffD6F6FF)),
    NotificationModel(title: "Interior Spa Delivered",BgColor:Color(0xffE1D7F1)),
    NotificationModel(title: "Interior Spa Delivered",BgColor:Color(0xffFAF0DB)),
  ];
}