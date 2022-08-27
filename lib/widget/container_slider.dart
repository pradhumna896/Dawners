import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider/app_controller.dart';

class ContainerSlider extends StatelessWidget {
  ContainerSlider({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);

    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(4, (index) => Expanded(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            margin: const EdgeInsets.only(right: 10.0),
            height: 3,
            decoration: BoxDecoration(
                color:data.mediacurrentIndex==index?Color(0xffFFFFFF):Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(20.0)),
          ),
        ), ));
  }
}
// Expanded(
// child: AnimatedContainer(
// duration: const Duration(milliseconds: 500),
// margin: const EdgeInsets.only(right: 10.0),
//
// height: 3,
// decoration: BoxDecoration(
// color:data.mediacurrentIndex==0?Color(0xffFFFFFF):Color(0xffD9D9D9),
// borderRadius: BorderRadius.circular(20.0)),
// ),
// ),
// Expanded(
// child: AnimatedContainer(
// duration: const Duration(milliseconds: 500),
// margin: const EdgeInsets.only(right: 10.0),
//
// height: 3,
// decoration: BoxDecoration(
// color:data.mediacurrentIndex==1?Color(0xffFFFFFF):Color(0xffD9D9D9),
// borderRadius: BorderRadius.circular(20.0)),
// ),
// ),
// Expanded(
// child: AnimatedContainer(
// duration: const Duration(milliseconds: 500),
// margin: const EdgeInsets.only(right: 10.0),
//
// height: 3,
// decoration: BoxDecoration(
// color:data.mediacurrentIndex==2?Color(0xffFFFFFF):Color(0xffD9D9D9),
// borderRadius: BorderRadius.circular(20.0)),
// ),
// ),
// Expanded(
// child: AnimatedContainer(
// duration: const Duration(milliseconds: 500),
// margin: const EdgeInsets.only(right: 10.0),
//
// height: 3,
// decoration: BoxDecoration(
// color:data.mediacurrentIndex==3?Color(0xffFFFFFF):Color(0xffD9D9D9),
// borderRadius: BorderRadius.circular(20.0)),
// ),
// ),
