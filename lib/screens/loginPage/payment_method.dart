import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_text_style.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/screens/bottombar/bottom_app_bar.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/widget/payment_method_dot_Slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class PaymentMethod extends StatelessWidget {
  PaymentMethod({Key? key}) : super(key: key);
  bool value = true;

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<CardController>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: AppBarBackButton(onclick: () {
          Navigator.of(context).pop();
        }),
        title: Text(
          "Payment Method",
          style: KTextClass.AppBarStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    "+ Add New Card",
                    style: kFontSize12.copyWith(
                        color: Color(0xff0075FF), fontWeight: FontWeight.w400),
                  ),
                ),
                Gap(Dimentions.width44)
              ],
            ),
            Gap(Dimentions.height10),
            Container(
                margin: EdgeInsets.only(left: Dimentions.width10),
                height: Dimentions.height183,
                child: PageView.builder(
                    pageSnapping: true,
                    padEnds: false,
                    itemCount: 3,
                    onPageChanged: (index) {
                      data.cardIndexPage(index);
                    },
                    controller: PageController(viewportFraction: 0.8),
                    itemBuilder: (BuildContext context, index) {
                      return Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: Dimentions.width5,
                            vertical: Dimentions.height4),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(Dimentions.height14)),
                        elevation: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Gap(Dimentions.height10),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimentions.width10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "BANK NAME",
                                    style: ksubHeading.copyWith(
                                        fontSize: Dimentions.font16,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimentions.width20),
                              child: Row(
                                children: [
                                  Image.asset("assets/icons/chip.png"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimentions.width20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "1234",
                                    style: ksubHeading.copyWith(
                                        fontSize: Dimentions.font20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "1234",
                                    style: ksubHeading.copyWith(
                                        fontSize: Dimentions.font20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "1234",
                                    style: ksubHeading.copyWith(
                                        fontSize: Dimentions.font20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "1234",
                                    style: ksubHeading.copyWith(
                                        fontSize: Dimentions.font20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "08/22",
                              style: ksubHeading.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: Dimentions.font14,
                              ),
                            ),
                            Gap(Dimentions.height5),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: Dimentions.width20,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "CARDHOLDER NAME",
                                    style: ksubHeading.copyWith(
                                        fontSize: Dimentions.font16,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                            Gap(Dimentions.height10)
                          ],
                        ),
                      );
                    })),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width18),
                child: Column(
                  children: [
                    PaymentMethodDotSlider(),
                    Gap(Dimentions.height10),
                    Row(
                      children: [
                        Text(
                          "Pay Via ",
                          style: TextStyle(
                              color: Color(0xff0E1012),
                              fontSize: Dimentions.font17,
                              fontFamily: "NunitoSans",
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    Gap(Dimentions.height10),
                    Row(
                      children: [
                        Radio(
                            value: value,
                            groupValue: true,
                            onChanged: (value) {
                              value = value;
                            }),
                        Gap(Dimentions.height25),
                        SvgPicture.asset(
                          "assets/svg_icon/Paytm-Logo.wine.svg",
                          height: Dimentions.height27,
                          width: Dimentions.width83,
                        )
                      ],
                    ),
                    Gap(Dimentions.height10),
                    Row(
                      children: [
                        Radio(
                            value: value,
                            groupValue: true,
                            onChanged: (value) {
                              value = value;
                            }),
                        Gap(Dimentions.height25),
                        SvgPicture.asset(
                          "assets/svg_icon/cdnlogo.com_phonepe.svg",
                          height: Dimentions.height27,
                          width: Dimentions.width100,
                        )
                      ],
                    ),
                    Gap(Dimentions.height10),
                    Row(
                      children: [
                        Radio(
                            value: value,
                            groupValue: true,
                            onChanged: (value) {
                              value = value;
                            }),
                        Gap(Dimentions.height25),
                        SvgPicture.asset(
                          "assets/svg_icon/gp3-lockup.svg",
                          height: Dimentions.height27,
                          width: Dimentions.width168,
                        ),
                      ],
                    ),
                    Gap(Dimentions.height30),
                    Row(
                      children: [
                        Text(
                          "Pay Via  UPI ID",
                          style: TextStyle(
                              color: Color(0xff0E1012),
                              fontSize: Dimentions.font17,
                              fontFamily: "NunitoSans",
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    Gap(Dimentions.height10),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/svg_icon/upi-icon.svg",
                          height: Dimentions.height25,
                          width: Dimentions.width50,
                        ),
                        Gap(Dimentions.height14),
                        Expanded(
                            child: Container(
                          height: Dimentions.height56,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimentions.height14),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter UPI ID",
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      Dimentions.height14),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  )),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(Dimentions.height14),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ))
                      ],
                    ),
                    Gap(Dimentions.height39),
                    CustomBottonPurple(
                      title: "Pay",
                      onClick: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => CurveAppBar()));
                      },
                      height: Dimentions.height56,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                        padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(

                            color: Color(0xff6739B7),
                            borderRadius: BorderRadius.circular(24)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("THE BANK OF ANYTHING",style: ksubHeading.copyWith(color: Color(0xffFFFFFF),
                                      fontSize: 16,
                                  fontWeight: FontWeight.w600),
                                  ),
                                ],

                              ),
                              Text("Its not Complete Now",style: TextStyle(fontSize: 20),),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SvgPicture.asset("assets/svg_icon/visa.svg",height: 55,width: 75,)
                                ],
                              )
                            ],
                          ),
                        ),
                      );
 */
