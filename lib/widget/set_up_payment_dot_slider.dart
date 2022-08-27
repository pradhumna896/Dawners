import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

import '../provider/app_controller.dart';

class SetUpPaymentSliderDotWidget extends StatelessWidget {
  int length;
  SetUpPaymentSliderDotWidget({
    Key? key,required this.length
  }) : super(key: key);
  int index=0;

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);


    return SizedBox(
      width: double.infinity,
      height: 20,
      child: Column(
        children: [
          const Spacer(),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children:List.generate(length, (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                margin: const EdgeInsets.only(right: 5.0),
                width:data.paymentCurrentIndexPageview== index?18: 6,
                height: 6,
                decoration: BoxDecoration(
                    color:Color(0xff6739B7),
                    borderRadius: BorderRadius.circular(6.0)),
              ),)
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
