import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/widget/autopay_grab_now.dart';
import 'package:dawners/widget/banner_widget.dart';
import 'package:dawners/widget/set_up_payment_dot_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SetUpPaymentNonRewardFound extends StatelessWidget {
  const SetUpPaymentNonRewardFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    return WillPopScope(
      onWillPop: ()async{
        data.paymentCurrentIndexPageview =0;
        return true;

      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: AppBarBackButton(
            onclick: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "My Reward",
            style: KTextClass.AppBarStyle,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Gap(Dimentions.height20),
              Container(
                padding: EdgeInsets.symmetric(vertical: Dimentions.height10),
                width: double.maxFinite,
                color: Color(0xffC2B0E2),
                child: Column(
                  children: [
                    Image.asset("assets/image/emptyreward.png"),
                    Text(
                      "No Rewards Found",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w800,
                          fontSize: Dimentions.font20,
                          color: Color(0xff000000)),
                    )
                  ],
                ),
              ),
              Gap(Dimentions.height15),
              Row(
                children: [
                  Gap(Dimentions.width20),
                  Text(

                    "Exciting Offers For You",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.montserrat(
                        fontSize: Dimentions.font12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff7B8D9E)),
                  ),
                ],
              ),
              Gap(Dimentions.height10),
              BannerWidget(),
              Gap(Dimentions.height10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Select Mode of Payment",
                    style: TextStyle(
                        fontSize: Dimentions.font12,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                        color: Color(0xff7B8D9E)),
                  ),
                  Gap(Dimentions.width10),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFF512F),
                        borderRadius: BorderRadius.circular(Dimentions.height56)),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                          horizontal: Dimentions.width5, vertical: Dimentions.height5),
                      child: RichText(
                        text: TextSpan(
                            text: "Deal Of The Day-",
                            style: TextStyle(
                                fontSize: Dimentions.font10,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w800,
                                fontFamily: "Montserrat"),
                            children: [
                              TextSpan(
                                  text: " GRAB NOW!",
                                  style: TextStyle(
                                      fontSize: Dimentions.font10,
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Montserrat"))
                            ]),
                      ),
                    ),
                  )
                ],
              ),
              Gap(Dimentions.height10),
              AutoPayGrabNow(),
              Gap(Dimentions.height10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
                child: CustomBottonPurple(title: "Continue", onClick: (){}, height: Dimentions.height56,textsize: Dimentions.font24),
              ),
              Gap(Dimentions.height10)


            ],
          ),
        ),
      ),
    );
  }
}
