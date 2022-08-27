import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/model/notification_model.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int selectIndex=0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Notifications",
          style: KTextClass.AppBarStyle,
        ),
        leading: AppBarBackButton(
          onclick: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
                itemCount: NotificationModel.notificationModel.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimentions.width20, vertical: Dimentions.height10),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(Dimentions.height24),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            selectIndex=index;

                          });
                        },
                        child: Container(
                          width: double.maxFinite,
                          height: Dimentions.height93,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimentions.height24),
                            border: Border.all(color:selectIndex==index? Color(0xff6739B7):Colors.transparent),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: Dimentions.height56,
                                width: Dimentions.width56,
                                decoration: BoxDecoration(
                                    color: NotificationModel.notificationModel[index].BgColor,
                                    borderRadius: BorderRadius.circular(Dimentions.height20)),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/svg_icon/Group 2407.svg",
                                    height: Dimentions.height30,width: Dimentions.width30,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Interior Spa\nDelivered",
                                    textAlign: TextAlign.start,
                                    style: ksubHeading.copyWith(
                                        color: Color(0xff0E1012),
                                        fontSize: Dimentions.font16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Gap(7),
                                ],
                              ),
                              Container(
                                height: Dimentions.height56,
                                width: Dimentions.width56,
                                decoration: BoxDecoration(
                                    color: NotificationModel.notificationModel[index].BgColor,
                                    borderRadius: BorderRadius.circular(Dimentions.height20)),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                  Text(
                                    "11",
                                    style: ksubHeading.copyWith(
                                        color: Color(0xff253141),
                                        fontWeight: FontWeight.w800,
                                        fontSize: Dimentions.font20),
                                  ),
                                  Text(
                                    "Mon",
                                    style: ksubHeading.copyWith(
                                        color: Color(0xff253141),
                                        fontWeight: FontWeight.w600,
                                        fontSize: Dimentions.font14),
                                  )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Gap(Dimentions.height10),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: Dimentions.width20),
            child: CustomBottonPurple(height: Dimentions.height56, title: 'DONE', onClick: () { Navigator.pop(context); },),
          ), Gap(Dimentions.height20),
        ],
      ),
    );
  }
}
