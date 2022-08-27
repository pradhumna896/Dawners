
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
const khintstyle =  TextStyle(
  fontFamily: "Montserrat-Regular",
  fontWeight: FontWeight.w400,
  color: Color(0xff7B8D9E),
  fontSize: 20,
);
const kBoxShadow = [
  BoxShadow(
      offset: Offset(2,2),
      color: Color.fromRGBO(230, 230, 230, 0.9)
  ),
  BoxShadow(
      offset: Offset(-5,-5),
      color: Color.fromRGBO(255, 255, 255, 0.9)
  ),
  BoxShadow(
      offset: Offset(5,-5),
      color: Color.fromRGBO(230, 230, 230, 0.2)
  ),
  BoxShadow(
      offset: Offset(-5,5),
      color: Color.fromRGBO(230, 230, 230, 0.2)
  ),
  BoxShadow(

    offset: Offset(-1,-1),
    color: Color.fromRGBO(230, 230, 230, 0.5),

  ),
  BoxShadow(
      offset: Offset(1,1),
      color: Color.fromRGBO(255, 255, 255, 0.3)
  )
];