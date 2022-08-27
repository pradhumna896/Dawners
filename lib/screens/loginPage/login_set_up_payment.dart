import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/custom_text_style.dart';
import 'package:dawners/helper/ktext_class.dart';
// import 'package:dawners/model/set_up_payment_dot_slider.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/payment_page.dart';
import 'package:dawners/screens/loginPage/payment_page_with_coupon.dart';
import 'package:dawners/switch_screen.dart';
import 'package:dawners/widget/autopay_grab_now.dart';
import 'package:dawners/widget/banner_widget.dart';
import 'package:dawners/widget/set_up_payment_dot_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:rolling_switch/rolling_switch.dart';

class LoginSetUpPayment extends StatelessWidget {
  const LoginSetUpPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    final dataForSwitch = Provider.of<CardController>(context);
    return WillPopScope(
      onWillPop: ()async{
        data.paymentCurrentIndexPageview =0;
        return true;

      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: AppBarBackButton(onclick: (){
            Navigator.of(context).pop();
          }),
          title: Text(
            "Set Up Payment",
            style: KTextClass.AppBarStyle,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal:Dimentions.width20),
                child: Text(
                  "Earn Cashback & Rewards On Every Payment!",
                  textAlign: TextAlign.start,
                  style: ksubHeading.copyWith(fontWeight: FontWeight.w700,color: Color(0xff0E1012),fontSize: Dimentions.font20),
                ),
              ),
              Gap(Dimentions.height10),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: Dimentions.width18),
                    child: Text(
                      "Exciting Offers For You",
                      style: ksubHeading.copyWith(fontWeight: FontWeight.w700)
                    ),
                  ),
                ],
              ),
              Gap(Dimentions.height10),
              BannerWidget(),
            SizedBox(
                height: Dimentions.height10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Select Mode of Payment",
                    style: kFontSize12.copyWith(color: Color(0xff7B8D9E)),
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFF512F),
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: RichText(
                        text: TextSpan(
                            text: "For Limited Customers-",
                            style:kFontSize12.copyWith(fontSize: Dimentions.font9,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w800,),
                            children: [
                              TextSpan(
                                  text: " GRAB NOW!",
                                  style:kFontSize12.copyWith(fontSize: Dimentions.font8,
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w500,))
                            ]),
                      ),
                    ),
                  )
                ],
              ),
              Gap(Dimentions.height10),
              AutoPayGrabNow(),
              Gap(Dimentions.height10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Pay Manually?",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: Dimentions.font12,
                        fontWeight: FontWeight.w600,
                        fontFamily: "NunitoSans"),
                  ),
                  Gap(Dimentions.width10),

                  SwitchScreen(),
                  Gap(Dimentions.width40)
                ],
              ),

              Visibility(
                  visible: dataForSwitch.isSwitch?true:false,
                  child: ManualPay()),
              Gap(Dimentions.height10),
              Divider(
                height: Dimentions.height5,
                color: Color(0xff07A605),
              ),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: Dimentions.width28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TOTAL",
                      style: kFontSize15.copyWith(color: Color(0xff07A605)),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.currency_rupee_sharp,
                            color: Color(0xff07A605),
                            size: Dimentions.size15,
                          ),
                          Text(
                            "1500",
                            style:kFontSize15.copyWith(color: Color(0xff07A605)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                height: Dimentions.height5,
                color: Color(0xff07A605),
              ),
              SizedBox(height: Dimentions.height20,),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: Dimentions.width25),
                child: CustomBottonPurple(height: Dimentions.height56,title: "Continue",onClick: (){
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>PaymentPageWithCoupon()));
                },),
              ),
              SizedBox(height: Dimentions.height10,)


            ],
          ),
        ),
      ),
    );
  }
}

class ManualPay extends StatelessWidget {
  const ManualPay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataForSwitch = Provider.of<CardController>(context);
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Dimentions.width18),
      child: Container(
        height: Dimentions.height120,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double innerheight = constraints.maxHeight;
            double innerwidth = constraints.maxWidth;
            return Stack(
              children: [
                Positioned(
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: innerheight * 0.9,
                      width: innerwidth,
                      decoration:BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomLeft,
                            // stops: [0.3,0.6,0.9],
                            colors: [
                              Color(0xffC1C1C1),
                              Color(0xffFFFFFF),
                              Color(0xffFFFFFF),
                              Color(0xffFFFFFF),
                              Color(0xffFFFFFF),
                              Color(0xffC1C1C1),
                            ]),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        children: [
                          Expanded(

                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  children: [
                                    Gap(17),
                                    Container(
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Manual Payment",
                                            style: TextStyle(
                                                color:
                                                Color(0xff6739B7),
                                                fontSize: 24,
                                                fontFamily:
                                                "Montserrat",
                                                fontWeight:
                                                FontWeight.w800),
                                          ),
                                          Text(
                                            "(month end)",
                                            style: TextStyle(
                                                color:
                                                Color(0xff6739B7),
                                                fontFamily:
                                                "Montserrat",
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),


                                    Container(
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            child: Row(children: [    Text(
                                              "1500",
                                              style: TextStyle(
                                                  color:
                                                  Color(0xff6739B7),
                                                  fontFamily:
                                                  "Montserrat",
                                                  fontSize: 24),
                                            ),
                                              Icon(
                                                Icons.currency_rupee,
                                                color: Color(0xff6739B7),
                                                size: 12,
                                              ),
                                              Column(
                                                children: [
                                                  SizedBox(
                                                    height: 12,
                                                  ),
                                                  Text(
                                                    "This Month",
                                                    style: TextStyle(
                                                        color: Color(
                                                            0xff6739B7),
                                                        fontFamily:
                                                        "Montserrat",
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                            ],),
                                          ),
                                          Expanded(
                                            child: Container(child: Column(children: [
                                              SizedBox(height: 5,),
                                              Divider(
                                                thickness: 1,
                                                height: 2,
                                                color: Color(0xff6739B7),
                                              ),
                                              RichText(
                                                  text: TextSpan(
                                                      text: "33%",
                                                      style: TextStyle(
                                                        color: Color(0xff6739B7),
                                                        fontSize:7,
                                                        fontFamily:
                                                        "Montserrat",
                                                        fontWeight: FontWeight.w400
                                                        ),
                                                      children: [
                                                        TextSpan(
                                                            text: " Off on Premium Add On - 1st Month",
                                                            style: TextStyle(
                                                              color: Color(0xff6739B7),
                                                              fontSize: 7,
                                                              fontWeight: FontWeight.w700,
                                                              fontFamily:
                                                              "Montserrat",

                                                            )),
                                                      ])),
                                              Divider(
                                                thickness: 1,
                                                height: 2,
                                                color: Color(0xff6739B7),)
                                            ],),),
                                          )



                                        ],
                                      ),
                                    ),
                                    Gap(6),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("Grab Now", style: TextStyle(
                                            color: Color(0xff6739B7),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Montserrat"),),
                                        Gap(10),
                                        SizedBox(
                                          height: 17,
                                          width: 50,
                                          child: FlutterSwitch(

                                            inactiveColor: Color(0xffFFFFFF),
                                            activeColor: Color(0xff6739B7),
                                            toggleColor: Color(0xffD9D9D9),

                                            toggleSize: 18,
                                            padding: 0.0,
                                            onToggle: (value) {
                                              dataForSwitch.isManualToggle(false);
                                            }, value: dataForSwitch.isManualSwitch,),
                                        )
                                      ],)
                                  ],
                                ),
                              )),

                        ],
                      ),
                    )),
                Positioned(
                  left: 5,
                  top: 4,
                  right: 5,
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: MediaQuery.of(context).size.width/2,
                        decoration: BoxDecoration(
                            color: Color(0xffFD1102),
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 4),
                          child: Center(
                            child: RichText(
                                text: TextSpan(
                                    text: "Payment Stress",
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 10,
                                      fontFamily:
                                      "Montserrat",
                                      fontWeight: FontWeight.w800,),
                                    children: [
                                      TextSpan(
                                          text: "  Every Month",
                                          style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 10,
                                            fontFamily:
                                            "Montserrat",
                                            fontWeight: FontWeight.w400


                                          )),
                                    ])),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


