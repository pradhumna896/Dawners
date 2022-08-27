import 'package:dawners/model/schedule_service_model.dart';
import 'package:flutter/material.dart';

class ScheduleServiceModel{
  Color? bgColor;
  ScheduleServiceModel(this.bgColor);
  static List<ScheduleServiceModel>scheduleServiceModel =[
  ScheduleServiceModel(Color(0xffD6F6FF)),
    ScheduleServiceModel(Color(0xffE1D7F1)),
    ScheduleServiceModel(Color(0xffFAF1DF))
  ];
}