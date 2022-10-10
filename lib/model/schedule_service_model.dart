import 'package:dawners/model/schedule_service_model.dart';
import 'package:flutter/material.dart';

class ScheduleServiceModel{
  Color? bgColor;
  String title;
  String image;
  ScheduleServiceModel({required this.bgColor,required this.title, required this.image});
  static List<ScheduleServiceModel>scheduleServiceModel =[
  ScheduleServiceModel( title:"Interior Spa",bgColor:Color(0xffD6F6FF),image: "assets/svg_icon/Group 2407.svg"),
    ScheduleServiceModel(bgColor:Color(0xffE1D7F1),title: "Exterior Spa",image:"assets/svg/exreiror.svg"),

  ];
}