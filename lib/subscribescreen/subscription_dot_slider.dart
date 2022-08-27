import 'package:dawners/provider/card_controller.dart';
import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

import '../provider/app_controller.dart';

class SubscriptionDotSlider extends StatelessWidget {
  SubscriptionDotSlider({
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
                  margin: const EdgeInsets.only(right: 5.0),
                  width:data.subscriptionDotIndex== 0?18: 6,
                  height: 6,
                  decoration: BoxDecoration(
                      color:Color(0xff6739B7),
                      borderRadius: BorderRadius.circular(6.0)),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  margin: const EdgeInsets.only(right: 5.0),
                  width:data.subscriptionDotIndex == 1?18: 6,
                  height: 6,
                  decoration: BoxDecoration(
                      color:Color(0xff6739B7),
                      borderRadius: BorderRadius.circular(6.0)),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  margin: const EdgeInsets.only(right: 5.0),
                  width: data.subscriptionDotIndex == 2?18:6,
                  height: 6,
                  decoration: BoxDecoration(
                      color:Color(0xff6739B7),
                      borderRadius: BorderRadius.circular(6)),
                ),
              ]
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
