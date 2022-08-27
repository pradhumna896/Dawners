import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/custom_car_caontainer.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/login_set_up_payment.dart';
import 'package:dawners/subscribescreen/subscribe_screen.dart';
import 'package:dawners/subscribescreen/subscription_dot_slider.dart';
import 'package:dawners/widget/select_your_vehicles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class SubscribeScreen extends StatelessWidget {
  const SubscribeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<CardController>(context);
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: AppBarBackButton(
          onclick: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          "My Subscriptions",
          style: KTextClass.AppBarStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(Dimentions.height20),
            Padding(
              padding:EdgeInsets.symmetric(horizontal:Dimentions.width20),
              child: Row(
                children: const [Text("Your Vehicles ", style: ksubHeading)],
              ),
            ),
            SizedBox(
              height: Dimentions.height10,
            ),
            SelectYourVehicles(),
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Package Details",
                    style: ksubHeading,
                  )
                ],
              ),
            ),
            Gap(10),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              elevation: 5,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Gap(15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCarContainer(height: 56, width: 56),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MH-14-KC-2932",
                              style: ksubHeading.copyWith(
                                  color: Color(0xff0E1012),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Daily Cleaning",
                              style: ksubHeading.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffE1D7F1)),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 10,
                                  left: 2,
                                  child: Icon(
                                    Icons.currency_rupee,
                                    color: Color(0xff6739B7),
                                    size: 10,
                                  )),
                              Positioned(
                                  top: 15,
                                  left: 8,
                                  child: Text(
                                    "649",
                                    style: ksubHeading.copyWith(
                                        color: Color(0xff6739B7),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20.28),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Gap(15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33),
                    child: Row(
                      children: [
                        Text(
                          "Premium Package",
                          style: ksubHeading.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                  Gap(7),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33),
                    child: Row(
                      children: [
                        Text(
                          "-Everything in Standard Pack and",
                          style: ksubHeading.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                  Gap(7),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38),
                    child: SizedBox(
                      height: 52,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, index) {
                            return Text(
                              "- Full Body Polishing - 4 times",
                              style: ksubHeading.copyWith(
                                  fontWeight: FontWeight.w500, fontSize: 9),
                            );
                          }),
                    ),
                  ),
                  Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "view more",
                              style: ksubHeading.copyWith(
                                  color: Color(0xff6739B7),
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600),
                            ),
                            SvgPicture.asset(
                                "assets/svg_icon/fluent_arrow-circle-right-32-regular (1).svg")
                          ],
                        ),
                      ),
                      Gap(76)
                    ],
                  ),
                  Gap(10),
                ],
              ),
            ),
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  Text(
                    "Dont Miss Out On Best Packs",
                    style: ksubHeading.copyWith(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Gap(10),
            SizedBox(
              height: 139,
              child: PageView.builder(
                  onPageChanged: (index) {
                    data.subsciptionDotPage(index);
                  },
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, index) {
                    return Container(

                      height: 139,
                      width: double.maxFinite,
                      child: Stack(
                          fit: StackFit.expand,
                          children: [
                        Image.asset(
                          "assets/image/subscribtionpremiumimage.png",
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 12,
                            left: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xff07A605)
                              ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1 Month ",
                                  style: ksubHeading.copyWith(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Free Premium Add On Trial",
                                  style: ksubHeading.copyWith(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                          ),
                        )),
                        Positioned(
                            bottom: 8,
                            right: 10,
                            child: Container(
                          height: 33,
                          width: 98,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            gradient: kOrangeButtonGradient
                          ),
                          child: Center(
                            child: Text("Subscribe Now",style: ksubHeading.copyWith(color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w700,
                              fontSize: 10
                            ),),
                          ),
                        ))
                      ]),
                    );
                  }),
            ),
            SubscriptionDotSlider(),
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: CustomBottonPurple(
                  title: "Upgrade Pack", onClick: (){}, height: 56),
            ),
            Gap(10),
            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>LoginSetUpPayment()));
                },
                child: Text("Edit Pack",
                  style: ksubHeading.copyWith(color: Color(0xff6739B7),fontSize: 15),)),
            Gap(100)
          ],
        ),
      ),
    );
  }
}


