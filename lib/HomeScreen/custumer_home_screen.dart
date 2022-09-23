import 'package:dawners/HomeScreen/home_slider.dart';
import 'package:dawners/HomeScreen/home_white_slider.dart';
import 'package:dawners/HomeScreen/notification_screen.dart';
import 'package:dawners/HomeScreen/redeem_gift_card.dart';
import 'package:dawners/HomeScreen/select_service.dart';
import 'package:dawners/HomeScreen/select_service_slot.dart';
import 'package:dawners/HomeScreen/stories_screen.dart';
import 'package:dawners/helper/custom_car_caontainer.dart';
import 'package:dawners/helper/custom_text.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/model/drawers_package_model.dart';
import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/payment_method.dart';
import 'package:dawners/screens/loginPage/payment_page.dart';
import 'package:dawners/switch_screen.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:slider_button/slider_button.dart';
import 'package:status_view/status_view.dart';

class CustomerHomeScreen extends StatelessWidget {
  CustomerHomeScreen({Key? key}) : super(key: key);
  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final dataForSwitch = Provider.of<CardController>(context);
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
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
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
                              borderRadius:
                              BorderRadius.circular(Dimentions.height14)),
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
                                  borderRadius: BorderRadius.circular(
                                      Dimentions.height50),
                                  color: Color(0xff6739B7)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2,
                                    horizontal: Dimentions.width10),
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
                                  builder: (ctx) => StoriesScreen()));
                        },
                        child: StatusView(
                          radius: 25,
                          spacing: 15,
                          strokeWidth: 2,
                          indexOfSeenStatus: 2,
                          numberOfStatus: 4,
                          padding: 4,
                          seenColor: Color(0xffC2B0E2),
                          unSeenColor: Color(0xff6739B7),
                          centerImageUrl: "https://picsum.photos/200/300",
                        ),

                        // Container(
                        //   height: Dimentions.height44,
                        //   width: Dimentions.width44,
                        //   decoration: BoxDecoration(
                        //       color: Color(0xffF0EBF8),
                        //       borderRadius:
                        //       BorderRadius.circular(Dimentions.height14)),
                        //   child: Center(
                        //       child: SvgPicture.asset(
                        //         "assets/svg_icon/clarity_bell-solid-badged.svg",
                        //         height: Dimentions.height15,
                        //         width: Dimentions.width17,
                        //       )),
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(Dimentions.height24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
                child: Text(
                  "Today's Notification",
                  style: TextStyle(
                      color: Color(0xff7B8D9E),
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w800,
                      fontSize: Dimentions.font12),
                ),
              ),
              Gap(Dimentions.height10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width18),
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
                              padding:
                              EdgeInsets.only(left: Dimentions.width10),
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
                                              topRight: Radius.circular(
                                                  Dimentions.height14),
                                              bottomLeft: Radius.circular(
                                                  Dimentions.height14))),
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
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.3,
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
                          Image.asset(
                            "assets/image/jackpotimage.png",
                            fit: BoxFit.fill,
                          ),
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
                    dismissThresholds: 0.8,
                    alignLabel: Alignment.center,
                    shimmer: true,
                    height: Dimentions.height64,
                    buttonSize: Dimentions.height64,
                    buttonColor: const Color(0xff6739B7),
                    backgroundColor: const Color(0xff6739B7),
                    action: () {
                      ///Do something here
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RedeemGiftCard()));
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
              SizedBox(
                height: 150,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, index) {
                  return index==2? ScheduleNow():AfterSheduleContainer(dataForSwitch: dataForSwitch);
                }),
              ),
              Gap(Dimentions.height10)
            ],
          ),
        ),
      ),
      drawer: Drawer(
        width: MediaQuery
            .of(context)
            .size
            .width * 0.8,
        child: Column(
          children: [
            Gap(Dimentions.height33),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimentions.width20,
                  vertical: Dimentions.height10),
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
              padding: EdgeInsets.symmetric(horizontal: Dimentions.width10),
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
                            height: Dimentions.height12,
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
                          CustomCarContainer(
                              height: Dimentions.height56,
                              width: Dimentions.width56),
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
              padding: EdgeInsets.symmetric(horizontal: Dimentions.width10),
              child: Row(
                children: [
                  Text(
                    "Share & Earn",
                    style: TextStyle(
                      color: Color(0xff83939E),
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      fontSize: Dimentions.font12,
                    ),
                  ),
                ],
              ),
            ),
            Gap(Dimentions.height5),
            Container(
              decoration: BoxDecoration(color: Color(0xff6A3ABC)),
              width: double.maxFinite,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimentions.width10,
                    vertical: Dimentions.height10),
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
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimentions.width20,
                          vertical: Dimentions.height12),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                  DrawersPackageModel
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
                            SvgPicture.asset("assets/svg_icon/arrowForward.svg")
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

class AfterSheduleContainer extends StatelessWidget {
  const AfterSheduleContainer({
    Key? key,
    required this.dataForSwitch,
  }) : super(key: key);

  final CardController dataForSwitch;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      margin: EdgeInsets.only(left: 10,right: 10),
      
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimentions.height24),
          color: Color(0xffE1D7F1)),
      child: Column(
        children: [
          Gap(Dimentions.height7),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimentions.width10,
                    vertical: Dimentions.height5),
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(Dimentions.height14),
                    color: Color(0xffFE8E00)),
                child: Text(
                  "3 days to go",
                  style: ksubHeading.copyWith(
                      color: Color(0xffFFFFFF),
                      fontSize: Dimentions.font10,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          Gap(Dimentions.height10),
          Container(
            margin:
            EdgeInsets.symmetric(horizontal: Dimentions.width15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: Dimentions.height56,
                  width: Dimentions.width56,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(Dimentions.height15),
                      color: Color(0xff6739B7)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                          title: "2nd",
                          fontWeight: FontWeight.w800,
                          color: Color(0xffFFFFFF),
                          fontSize: Dimentions.font12),
                      CustomText(
                          title: "Interior",
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFFFFF),
                          fontSize: Dimentions.font10)
                    ],
                  ),
                ),
                Column(
                  children: [
                    CustomText(
                        title: "MH-14-KC-2932",
                        fontWeight: FontWeight.w700,
                        color: Color(0xff6739B7),
                        fontSize: Dimentions.font16),
                    Gap(Dimentions.height5),
                    CustomText(
                        title: "@ 10:30 AM",
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6739B7),
                        fontSize: Dimentions.font14)
                  ],
                ),
                Container(
                  width: Dimentions.width56,
                  height: Dimentions.height56,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(Dimentions.height15),
                      color: Color(0xff6739B7)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                          title: "11",
                          fontWeight: FontWeight.w800,
                          color: Color(0xffFFFFFF),
                          fontSize: Dimentions.font20),
                      CustomText(
                          title: "Dec",
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFFFFF),
                          fontSize: Dimentions.font14)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap(Dimentions.height10),
          DottedLine(
            dashLength: Dimentions.width15,
            dashColor: Color(0xff6739B7),
            dashRadius: Dimentions.height24,
          ),
          Gap(Dimentions.height10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimentions.width15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomText(
                    title: "Reschedule",
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                    fontSize: Dimentions.font8),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SelectServiceSlot()));
                    },
                    child: SvgPicture.asset("assets/svg_icon/reshedule.svg")),
                Spacer(),
                CustomText(
                    title: "Mark Mode",
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                    fontSize: Dimentions.font8),
                SizedBox(
                  height: 23,
                  width: 79,
                  child: FlutterSwitch(

                    valueFontSize: 12,
                    showOnOff: true,
                    padding: 0.0,
                    activeTextColor: Color(0xffFFFFFF),
                    activeTextFontWeight: FontWeight.w400,


                    inactiveTextColor: Color(0xffFFFFFF),
                    inactiveTextFontWeight: FontWeight.w400,
                    inactiveColor: Color(0xffFFFFFF),
                    activeColor: Color(0xffFFFFFF),
                    toggleColor: Color(0xff6739B7),


                    value: dataForSwitch.isSwitch,
                    onToggle: (bool value) {
                      dataForSwitch.isToggleSwitch(false);
                    },),
                )


              ],
            ),
          ),
          Gap(Dimentions.height6)
        ],
      ),
    );
  }
}

class ScheduleNow extends StatelessWidget {
  const ScheduleNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimentions.width15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: Dimentions.height77,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimentions.height24),
                color: Color(0xffD6F6FF)),
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimentions.width10),
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
                      padding: EdgeInsets.symmetric(horizontal: Dimentions.width10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => SelectService()));
                        },
                        child: Container(
                          height: Dimentions.height33,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  Dimentions.height24),
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
        ],
      ),
    );
  }
}
