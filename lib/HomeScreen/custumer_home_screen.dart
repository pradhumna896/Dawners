import 'package:dawners/HomeScreen/home_slider.dart';
import 'package:dawners/HomeScreen/home_white_slider.dart';
import 'package:dawners/HomeScreen/notification_screen.dart';
import 'package:dawners/HomeScreen/select_service.dart';
import 'package:dawners/helper/custom_car_caontainer.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/model/drawers_package_model.dart';
import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/payment_method.dart';
import 'package:dawners/screens/loginPage/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:slider_button/slider_button.dart';

class CustomerHomeScreen extends StatelessWidget {
  CustomerHomeScreen({Key? key}) : super(key: key);
  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<CardController>(context);
    return Scaffold(
      extendBody: true,
      key: globalKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(Dimentions.height10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:Dimentions.width20),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          globalKey.currentState?.openDrawer();
                        },
                        child: Container(
                          height: Dimentions.height44,
                          width: Dimentions.width44,
                          decoration: BoxDecoration(
                              color: Color(0xffF0EBF8),
                              borderRadius: BorderRadius.circular(Dimentions.height14)),
                          child: Center(
                              child: SvgPicture.asset(
                            "assets/svg_icon/menuicon.svg",
                            height: Dimentions.height15,
                            width: Dimentions.width17,
                          )),
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello",
                              style: TextStyle(
                                  color: Color(0xff0E1012),
                                  fontFamily: "Montserrat",
                                  fontSize: Dimentions.font14,
                                  fontWeight: FontWeight.w300),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Amit",
                                  style: TextStyle(
                                      color: Color(0xff0E1012),
                                      fontWeight: FontWeight.w700,
                                      fontSize: Dimentions.font18,
                                      fontFamily: "Montserrat"),
                                ),
                                SvgPicture.asset(
                                    "assets/svg_icon/hellohand.svg")
                              ],
                            )
                          ],
                        ),
                      ),
                      Gap(Dimentions.width10),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "You Earnt",
                              style: TextStyle(
                                  color: Color(0xff0E1012),
                                  fontFamily: "Montserrat",
                                  fontSize: Dimentions.font14,
                                  fontWeight: FontWeight.w300),
                            ),
                            Container(

                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(Dimentions.height50),
                                  color: Color(0xff6739B7)),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(
                                    vertical: 2, horizontal: Dimentions.width10),
                                child: Row(
                                  children: [
                                    Text(
                                      "1000",
                                      style: GoogleFonts.inter(
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w700,
                                          fontSize: Dimentions.font15,
                                         ),
                                    ),
                                    Gap(Dimentions.width5),
                                    Image.asset("assets/icons/Dcircle.png")
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => NotificationScreen()));
                        },
                        child: Container(
                          height: Dimentions.height44,
                          width: Dimentions.width44,
                          decoration: BoxDecoration(
                              color: Color(0xffF0EBF8),
                              borderRadius: BorderRadius.circular(Dimentions.height14)),
                          child: Center(
                              child: SvgPicture.asset(
                            "assets/svg_icon/clarity_bell-solid-badged.svg",
                            height: Dimentions.height15,
                            width: Dimentions.width17,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(Dimentions.height24),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:Dimentions.width20),
                child: Text(
                  "Todays Notification",
                  style: TextStyle(
                      color: Color(0xff7B8D9E),
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w800,
                      fontSize: Dimentions.font12),
                ),
              ),
              Gap(Dimentions.height10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:Dimentions.width18),
                child: SizedBox(
                  height: Dimentions.height61,
                  child: Stack(
                    children: [
                      PageView.builder(
                          onPageChanged: (index) {
                            data.homeWhiteIndexPage(index);
                          },
                          itemCount: 3,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding:  EdgeInsets.only(left: Dimentions.width10),
                              child: Stack(fit: StackFit.expand, children: [
                                Positioned(
                                    child: Image.asset(
                                  "assets/image/beutyfullVehicle.png",
                                  fit: BoxFit.fill,
                                )),
                                Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff07A605),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(Dimentions.height14),
                                              bottomLeft: Radius.circular(Dimentions.height14))),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: Dimentions.width10,
                                            vertical: Dimentions.height3),
                                        child: Center(
                                            child: Text(
                                          "mH-14-KC-2787",
                                          style: ksubHeading.copyWith(
                                              color: Color(0xffFFFFFF),
                                              fontSize: Dimentions.font9),
                                        )),
                                      ),
                                    ))
                              ]),
                            );
                          }),
                      Positioned(
                          bottom: Dimentions.height5,
                          left: 0,
                          right: 0,
                          child: HomeWhiteSlider())
                    ],
                  ),
                ),
              ),
              Gap(Dimentions.height20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
                child: Text(
                  "Exciting Offers For You!",
                  style: TextStyle(
                      color: Color(0xff7B8D9E),
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w800,
                      fontSize: Dimentions.font12),
                ),
              ),
              Gap(Dimentions.height10),
              Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.3,
                child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (index) {
                    data.homeIndexPage(index);
                  },
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return LayoutBuilder(builder: (BuildContext, constrains) {
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset("assets/image/jackpotimage.png",fit: BoxFit.fill,),
                          Positioned(
                            left: Dimentions.width20,
                            bottom: Dimentions.height61,
                            child: Container(
                              height: Dimentions.height33,
                              decoration: BoxDecoration(
                                color: Color(0xffFAA53A),
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomLeft,
                                    // stops: [0.3,0.6,0.9],
                                    colors: [
                                      Color(0xffFAA53A),
                                      Color(0xffFE8E00),
                                      Color(0xffFE8E00),
                                      Color(0xffC06B00),
                                    ]),
                                borderRadius:
                                    BorderRadius.circular(Dimentions.height14),
                              ),
                              child: Center(
                                  child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Dimentions.width20),
                                child: Text(
                                  "Subscribe Now",
                                  style: GoogleFonts.nunitoSans(
                                    color: Color(0xffFFFFFF),
                                    fontSize: Dimentions.font14,
                                  ),
                                ),
                              )),
                            ),
                          )
                        ],
                      );
                    });
                  },
                ),
              ),
              Gap(Dimentions.height10),
              HomeSlider(),
              Gap(Dimentions.height5),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
                child: Text(
                  "Enjoy Premium Rewards",
                  style: GoogleFonts.montserrat(
                      color: Color(0xff7B8D9E),
                      fontWeight: FontWeight.w700,
                      fontSize: Dimentions.font12),
                ),
              ),
              Gap(Dimentions.height10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
                child: Container(
                  width: double.maxFinite,
                  child: SliderButton(
                    dismissThresholds: 1,
                    alignLabel: Alignment.center,
                    shimmer: false,
                    height: Dimentions.height64,
                    buttonSize: Dimentions.height64,
                    buttonColor: const Color(0xff6739B7),
                    backgroundColor: const Color(0xff6739B7),
                    action: () {
                      ///Do something here
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentMethod()));
                    },
                    label: Text(
                      "Slide to pay with DAWNERS Coins",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w800,
                          fontFamily: "Montserrat",
                          fontSize: Dimentions.font10),
                    ),
                    icon: Image.asset(
                      "assets/image/istockphoto-1129726518-170667a 2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Services",
                      style: GoogleFonts.inter(
                          color: Color(0xff7B8D9E),
                          fontWeight: FontWeight.w800,
                          fontSize: Dimentions.font12),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: GoogleFonts.inter(
                            color: Color(0xff614AD3),
                            fontSize: Dimentions.font15,
                            fontWeight: FontWeight.w500,
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width15),
                child: Container(
                  height: Dimentions.height77,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimentions.height24),
                      color: Color(0xffD6F6FF)),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimentions.width10),
                        child: Text(
                          "There Are No Upcoming Services!",
                          style: TextStyle(
                              color: Color(0xff7B8D9E),
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                              fontSize: Dimentions.font12),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimentions.width10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => SelectService()));
                          },
                          child: Container(
                            height: Dimentions.height33,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimentions.height24),
                                color: Color(0xff009DC7)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Schedule Now",
                                    style: GoogleFonts.nunitoSans(
                                      color: Color(0xffFFFFFF),
                                      fontSize: Dimentions.font12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Gap(Dimentions.height10),
                                  SvgPicture.asset(
                                      "assets/svg_icon/fluent_calendar-add-16-regular.svg")
                                ],
                              ),
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          children: [

            Gap(Dimentions.height33),
            Padding(
              padding:
                   EdgeInsets.symmetric(horizontal:Dimentions.width20 , vertical: Dimentions.height10),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Text(
                      "Close",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          fontSize: Dimentions.font12),
                    ),
                    Gap(Dimentions.width5),
                    SvgPicture.asset(
                        "assets/svg_icon/ant-design_close-circle-outlined.svg")
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: Dimentions.width10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/svg_icon/hellohand.svg"),
                          Gap(Dimentions.width5),
                          Text(
                            "Hello,",
                            style: TextStyle(
                                color: Color(0xff161616),
                                fontSize: Dimentions.font16,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Montserrat"),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Amit!",
                            style: TextStyle(
                                color: Color(0xff161616),
                                fontSize: Dimentions.font27,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat"),
                          ),
                          Gap(Dimentions.width10),
                          SvgPicture.asset(
                            "assets/svg_icon/fluent_edit-28-filled.svg",
                            height: Dimentions.height12 ,
                            width: Dimentions.width12,
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back_ios),
                          CustomCarContainer(height: Dimentions.height56, width: Dimentions.width56),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                      Text(
                        "MH-2787",
                        style: TextStyle(
                            color: Color(0xff161616),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat",
                            fontSize: Dimentions.font12),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:Dimentions.width10),
              child: Row(
                children: [
                  Text(
                    "Share & Earn",
                    style: TextStyle(
                        color: Color(0xff83939E),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      fontSize: Dimentions.font12,),
                  ),
                ],
              ),
            ),
            Gap(Dimentions.height5),
            Container(
              decoration: BoxDecoration(color: Color(0xff6A3ABC)),

              width: double.maxFinite,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: Dimentions.width10,vertical: Dimentions.height10),
                child: Row(
                  children: [
                    Text(
                      "Get",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: Dimentions.font36,
                          fontWeight: FontWeight.w800,
                          fontFamily: "Montserrat"),
                    ),
                    Icon(
                      Icons.currency_rupee,
                      color: Color(0xffFFFFFF),
                      size: 30,
                    ),
                    Text(
                      "100",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: Dimentions.font36,
                          fontWeight: FontWeight.w800,
                          fontFamily: "Montserrat"),
                    ),
                    Text(
                      " Off",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: Dimentions.font36,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat"),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xffFFFFFF),
                      size: Dimentions.height25,
                    )
                  ],
                ),
              ),
            ),
           
            Flexible(
              child: ListView.builder(
                  itemCount: DrawersPackageModel.drawersPackageModel.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding:  EdgeInsets.symmetric(
                          horizontal: Dimentions.width20, vertical: Dimentions.height12),
                      child: InkWell(
                        onTap: () {


                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => DrawersPackageModel
                                      .drawersPackageModel[index].page!));
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset(DrawersPackageModel
                                .drawersPackageModel[index].icon!),
                            Gap(Dimentions.width10),
                            Text(
                              DrawersPackageModel
                                  .drawersPackageModel[index].title!,
                              style: TextStyle(
                                  fontSize: Dimentions.font16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat",
                                  color: Color(0xff6739B7)),
                            ),
                            Spacer(),
                            SvgPicture.asset(
                                "assets/svg_icon/arrowForward.svg")
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Gap(7)
          ],
        ),
      ),
    );
  }
}
