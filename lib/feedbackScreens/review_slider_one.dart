import 'package:dawners/provider/card_controller.dart';
import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

import '../provider/app_controller.dart';

class ReviewOneDotSlider extends StatelessWidget {
  ReviewOneDotSlider({
    Key? key,
  }) : super(key: key);
  int index=0;

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<CardController>(context);


    return SizedBox(
      width: double.infinity,
      height: 40,
      child: Column(
        children: [
          const Spacer(),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children:[
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  margin: const EdgeInsets.only(right: 10.0),
                  width:data. reviewDetailOne == 0?30: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      color:Color(0xff6739B7),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  margin: const EdgeInsets.only(right: 10.0),
                  width:data. reviewDetailOne == 1?30: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      color:Color(0xff6739B7),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  margin: const EdgeInsets.only(right: 10.0),
                  width:data. reviewDetailOne == 2?30: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      color:Color(0xff6739B7),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  margin: const EdgeInsets.only(right: 10.0),
                  width: data. reviewDetailOne == 3?30:12,
                  height: 12,
                  decoration: BoxDecoration(
                      color:Color(0xff6739B7),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ]
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
