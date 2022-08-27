import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_text_style.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/widget/set_up_payment_dot_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class VehiclesCareTaker extends StatelessWidget {
  const VehiclesCareTaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Vehicles Care Taker",
          style: KTextClass.AppBarStyle,
        ),
        centerTitle: true,
        leading: AppBarBackButton(onclick: () {
          Navigator.of(context).pop();
        }),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(Dimentions.height20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
              child: Text(
                "We Study Your Inputs,",
                style: kFontSize12.copyWith(
                    fontSize: Dimentions.font24,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff0E1012)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Dimentions.width20),
              child: Text(
                "For Your Best Experience!",
                style: kFontSize12.copyWith(
                    fontSize: Dimentions.font24, color: Color(0xff0E1012)),
              ),
            ),
            cleanerProfile(data),
            rattingWidget(),
            Gap(Dimentions.height20),
            Padding(
              padding: EdgeInsets.only(left: Dimentions.width20),
              child: Text(
                "Fill Detailed Feedback Form?",
                style: kFontSize15.copyWith(
                    fontWeight: FontWeight.w600, color: Color(0xff7B8D9E)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Dimentions.width20),
              child: InkWell(
                onTap: () {},
                child: Text(
                  "click here",
                  style: kFontSize15.copyWith(
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      color: Color(0xff6739B7)),
                ),
              ),
            ),
            Gap(Dimentions.height20),
            Padding(
              padding: EdgeInsets.only(left: Dimentions.width20),
              child: Text(
                "Contact DAWNERS Admin Support?",
                style: kFontSize15.copyWith(
                    fontWeight: FontWeight.w600, color: Color(0xff7B8D9E)),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimentions.width20,),
              child: Text(
                "Drop us your query on Whatsapp - 9067610118.We will reach you soon.",
                style: kFontSize12.copyWith(
                    color: Color(0xff7B8D9E),
                    fontSize: Dimentions.height10,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }

  Center rattingWidget() {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xffCECECE)),
            borderRadius: BorderRadius.circular(Dimentions.height14)),
        margin: EdgeInsets.symmetric(horizontal: Dimentions.width30),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimentions.width15, vertical: Dimentions.height15),
          child: Column(
            children: [
              Text(
                "How Is Your Service Experience?",
                style: kFontSize15.copyWith(
                    color: Color(0xff7B8D9E), fontWeight: FontWeight.w600),
              ),
              Gap(Dimentions.height5),
              RatingBar(
                  ratingWidget: RatingWidget(
                      half: SvgPicture.asset(
                          "assets/svg_icon/fluent_star-12-filled.svg"),
                      full: SvgPicture.asset(
                          "assets/svg_icon/fluent_star-12-filled.svg"),
                      empty: SvgPicture.asset(
                          "assets/svg_icon/fluent_star-12-filled.svg")),
                  onRatingUpdate: (d) {}),
              Gap(Dimentions.height10),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: Dimentions.height18,
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: Dimentions.width10),
                          hintText: "Add A Note",
                          hintStyle: kFontSize12.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff7B8D9E)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(Dimentions.height14))),
                    ),
                  )),
                  Gap(Dimentions.width10),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: Dimentions.width10),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimentions.height14),
                          color: Color(0xffFE8E00)),
                      height: Dimentions.height18,
                      child: Center(
                          child: Text(
                        "Submit",
                        style: kFontSize15.copyWith(fontSize: Dimentions.font8),
                      )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Column cleanerProfile(data) {
    return Column(
      children: [
        Container(
          height: Dimentions.height275,
          child: PageView.builder(
              onPageChanged: (value) {
                data.cleanerPositionedStatus(value);
              },
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(
                      horizontal: Dimentions.width15,
                      vertical: Dimentions.height20),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xff6739B7),
                    ),
                    borderRadius: BorderRadius.circular(Dimentions.height20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimentions.width18,
                        vertical: Dimentions.height15),
                    child: Column(
                      children: [
                        Text(
                          "YOUR VEHICLES CLEANER",
                          style: kFontSize12.copyWith(
                              fontSize: Dimentions.height20),
                        ),
                        Text(
                          "FROM 13TH MARCH 2022, 10:30 AM",
                          style: kFontSize12.copyWith(color: Color(0xff83939E)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: Dimentions.width20,
                              vertical: Dimentions.height20),
                          height: Dimentions.height85,
                          width: Dimentions.width125,
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                radius: Dimentions.height39,
                                child: Image.asset(
                                    "assets/image/cleanerimage.png"),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  "assets/svg_icon/fluent_star-12-filled.svg",
                                  height: Dimentions.height12,
                                  width: Dimentions.width12,
                                ),
                                Text(
                                  "4.7",
                                  style: kFontSize12,
                                )
                              ],
                            ),
                            Positioned(
                              top: Dimentions.height2,
                              left: Dimentions.width15,
                              child: SvgPicture.asset(
                                  "assets/svg_icon/hexashapecheckmark.svg"),
                            )
                          ]),
                        ),
                        Text(
                          "SHIV is ready to take care of your vehicle!",
                          style: kFontSize12.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff6739B7)),
                        ),
                        Gap(Dimentions.height10),
                        Text(
                          "Mobile Number - 9845421540",
                          style: kFontSize12.copyWith(
                              color: Color(0xff83939E),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
        SizedBox(
          width: double.infinity,
          height: 20,
          child: Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    4,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      margin: const EdgeInsets.only(right: 5.0),
                      width: data.checkCleanerPositioned == index ? 18 : 6,
                      height: 6,
                      decoration: BoxDecoration(
                          color: Color(0xff6739B7),
                          borderRadius: BorderRadius.circular(6.0)),
                    ),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
