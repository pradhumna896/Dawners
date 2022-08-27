import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class profileDetail extends StatelessWidget {
  String icon;
  String title;
  String subtitle;
 profileDetail({
    Key? key,required this.icon,required this.subtitle,required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            height: Dimentions.height44,
            width: Dimentions.width44,
            child: SvgPicture.asset(icon,)),
        Gap(Dimentions.width5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
              style: TextStyle(
                  color: Color(0xff7B8D9E),
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,
                  fontSize: Dimentions.font20),),
            Text(subtitle,
              softWrap: true,
              style: TextStyle(

                  color: Color(0xff7B8D9E),
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700,
                  fontSize: Dimentions.font20),)
          ],)
      ],);
  }
}