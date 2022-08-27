import 'package:flutter/cupertino.dart';

class CustomCarContainer extends StatelessWidget {
  double height;
  double width;

   CustomCarContainer({
    Key? key,required this.height ,required this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Color(0xffE1D7F1),
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child:
        Image.asset("assets/image/serviceCar.png"),
      ),
    );
  }
}