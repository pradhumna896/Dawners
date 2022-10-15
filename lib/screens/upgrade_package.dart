import 'package:dawners/helper/box_shadow.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/ktext_class.dart';

// import 'package:dawners/model/upgrade_dot_slider.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/login_set_up_payment.dart';
import 'package:dawners/screens/package_details.dart';
import 'package:dawners/widget/upgrade_dot_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class UpgradePackage extends StatefulWidget {
  String id;
  String price;

  UpgradePackage({Key? key, required this.id , required this.price}) : super(key: key);

  @override
  State<UpgradePackage> createState() => _UpgradePackageState();
}

class _UpgradePackageState extends State<UpgradePackage> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  int currentIndex = 0;
  double height = Dimentions.height435;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding:  EdgeInsets.all(Dimentions.height8),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(Dimentions.height15),
              child: Container(
                height: Dimentions.height44,
                width: Dimentions.width44,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffD7DEEA), width: 1),
                    borderRadius: BorderRadius.circular(Dimentions.height15)),
                child: Center(
                    child: SvgPicture.asset(
                  "assets/image/backarrow.svg",
                  color: Color(0xff7B8D9E),
                )),
              ),
            ),
          ),
        ),
        title: Text(
          "Don't Miss Out",
          style: KTextClass.AppBarStyle
        ),
      ),
      body: Column(
        children: [
          Gap(Dimentions.height10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:Dimentions.width18),
            child: RichText(
                text:  TextSpan(
                    text: "Check Out All The Amazing Benefits -",
                    style: TextStyle(
                        color: Color(0xff0E1012),
                        fontSize: Dimentions.height24,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400),
                    children: [
                  TextSpan(
                      text: "Its Free",
                      style: TextStyle(
                          color: Color(0xff0E1012),
                          fontSize: Dimentions.height24,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700))
                ])),
          ),
          Gap(Dimentions.height10),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:Dimentions.width18),
            child: Row(
              children:  [
                Text(
                  "Add on Specially Curated for you",
                  style: TextStyle(
                      color: Color(0xff7B8D9E),
                      fontSize: Dimentions.font12,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat"),
                ),
              ],
            ),
          ),
          Gap(Dimentions.height10),
          Expanded(
            child: PageView.builder(
                onPageChanged: (index) {
                  data.currentIndexPageviewUpgrade(index);
                },
                controller: pageController,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xffFE8E00),
                      ),
                      borderRadius: BorderRadius.circular(Dimentions.height10), //<-- SEE HERE
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [Container(
                            width: double.maxFinite,
                            height: Dimentions.height140,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/image/carupgradepackage.png"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(Dimentions.height10),
                                  topRight: Radius.circular(Dimentions.height10)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffFE8E00),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(Dimentions.height10),
                                      topRight: Radius.circular(Dimentions.height10),
                                      topLeft: Radius.circular(Dimentions.height10))),
                              child: Padding(
                                padding:  EdgeInsets.only(
                                    right:Dimentions.width20, left: Dimentions.width10, bottom: Dimentions.height6, top:Dimentions.height2),
                                child: RichText(
                                  text: TextSpan(
                                      text: "1 Month\n",
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontFamily: "Montserrat",
                                          fontSize: Dimentions.font10,
                                          fontWeight: FontWeight.w400),
                                      children: [
                                        TextSpan(
                                          text: "Free Premium Trial",
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontFamily: "Montserrat",
                                              fontSize: Dimentions.font10,
                                              fontWeight: FontWeight.w800),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                                Gap(Dimentions.height30),


                            ],),
                          ),
                            Positioned(
                              top: 0,
                                bottom: 0,
                                left: 0,
                                right: 0,

                                child:  CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child:
                                SvgPicture.asset("assets/svg/bx_play-circle.svg")))
                        ]),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff6739B7),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(14))),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(
                                    horizontal: Dimentions.width20, vertical: Dimentions.height2),
                                child: Text(
                                  "Recommended",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: Dimentions.font10,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                            Gap(Dimentions.height10,),
                            Expanded(
                              child: RichText(
                                  text: TextSpan(
                                      text: "153291",
                                      style: TextStyle(
                                          color: Color(0xff07A605),
                                          fontWeight: FontWeight.w700,
                                          fontSize: Dimentions.font10,
                                          fontFamily: "Montserrat"),
                                      children: [
                                        TextSpan(
                                          text: " Happy Subscribers in your area",
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontWeight: FontWeight.w400,
                                              fontSize: Dimentions.font10,
                                              fontFamily: "Montserrat"),
                                        )
                                      ])),
                            )
                          ],
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: Dimentions.width7),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Standard Pack",
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: Dimentions.font15,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          "We all love Sparkling Cars",
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: Dimentions.font10,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Montserrat"),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      "6 services",
                                      style: TextStyle(
                                          color: Color(0xff7B8D9E),
                                          fontFamily: "Montserrat",
                                          fontSize: Dimentions.font12,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ),
                              Gap(Dimentions.height3),
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: Dimentions.width7),
                                child: Text(
                                  "-Everything in Basic Pack and",
                                  style: TextStyle(
                                      color: Color(0xff7B8D9E),
                                      fontSize: Dimentions.font10,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Montserrat"),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(Dimentions.height10),
                                child: Column(
                                  children: [
                                    Column(
                                      children: List.generate(4, (index) => Row(
                                        children: [
                                          Container(
                                            height: Dimentions.height3,
                                            width: Dimentions.width3,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(Dimentions.height3),
                                                color: Color(0xff7B8D9E)),
                                          ),
                                          Gap(Dimentions.height5),
                                          Text(
                                            "Exterior Foam Wash - 4 Times",
                                            style: TextStyle(
                                                color: Color(0xff7B8D9E),
                                                fontFamily: "Montserrat",
                                                fontSize: Dimentions.font10,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),),
                                    ),


                                    Padding(
                                      padding: EdgeInsets.only(top: Dimentions.height7, left: Dimentions.width10),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Special Offers",
                                            style: TextStyle(
                                                color: Color(0xff7B8D9E),
                                                fontSize: Dimentions.font10,
                                                fontFamily: "Montserrat"),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Gap(Dimentions.height20),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(Dimentions.height4),
                                                border: Border.all(
                                                    color: Color(0xff7B8D9E), width: Dimentions.width2)),
                                            child: Padding(
                                              padding:EdgeInsets.all(Dimentions.height3),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Save 40% Every Month",
                                                    style: TextStyle(
                                                        color: Color(0xff009DC7),
                                                        fontSize: Dimentions.font10,
                                                        fontFamily: "Montserrat",
                                                        fontWeight: FontWeight.w700),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Pay via AUTOPAY ",
                                                        style: TextStyle(
                                                            color: Color(0xff009DC7),
                                                            fontSize: Dimentions.font10,
                                                            fontWeight: FontWeight.w400,
                                                            fontFamily: "Montserrat"),
                                                      ),
                                                      Gap(Dimentions.height30),
                                                      SvgPicture.asset(
                                                          "assets/svg_icon/Pericon.svg",
                                                          color: Color(0xff009DC7))
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Gap(Dimentions.height10),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(Dimentions.height4),
                                                border: Border.all(
                                                    color: Color(0xff7B8D9E), width: Dimentions.width2)),
                                            child: Padding(
                                              padding:  EdgeInsets.all(Dimentions.height3),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Earn Cashback & Rewards Every Month",
                                                    style: TextStyle(
                                                        color: Color(0xff009DC7),
                                                        fontSize: Dimentions.font10,
                                                        fontFamily: "Montserrat",
                                                        fontWeight: FontWeight.w700),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Pay via AUTOPAY ",
                                                        style: TextStyle(
                                                            color: Color(0xff009DC7),
                                                            fontSize: Dimentions.font10,
                                                            fontWeight: FontWeight.w400,
                                                            fontFamily: "Montserrat"),
                                                      ),
                                                      Gap(Dimentions.height90),
                                                      Image.asset(
                                                        "assets/icons/Dcircle.png",
                                                        height: Dimentions.height14,
                                                        width: Dimentions.width13,
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              CustomGradientContainer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "view more",
                                    style: TextStyle(
                                        color: Color(0xff6739B7),
                                        fontFamily: "Montserrat",
                                        fontSize: Dimentions.font9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Gap(Dimentions.width5),
                                  SvgPicture.asset(
                                      "assets/svg_icon/fluent_arrow-circle-right-32-regular (1).svg"),
                                  Gap(Dimentions.width10)
                                ],
                              ),
                              Gap(Dimentions.height4)
                            ],
                          ),
                        )


                      ],
                    ),

                  );
                }),
          ),
          UpgradeSliderDotWidget(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: Dimentions.width25),
            child: CustomBottonPurple(
              title: 'Upgrade Pack',
              textsize: Dimentions.height24,
              height: Dimentions.height56,
              onClick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => PackageDetails(id: "1",price: "500",)));
              },
            ),
          ),
          Gap(Dimentions.height10),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => LoginSetUpPayment()));
            },
            child:  Text(
              "Keep Current Pack",
              style: TextStyle(
                  color: Color(0xff6739B7),
                  fontSize: Dimentions.height24,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Montserrat"),
            ),
          ),
          Gap(Dimentions.height24),
        ],
      ),
    );
  }

  Widget _animatedContainer(int index) {
    final data = Provider.of<AppController>(context);
    return Container(
      height: height,
      margin: EdgeInsets.only(right:Dimentions.width10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimentions.height10),
          border: Border.all(color: Color(0xffFE8E00), width: 2)),
      child: Column(
        children: [
          Column(
            children: [
              Stack(children: [
                Container(
                  width: double.maxFinite,
                  height: Dimentions.height140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/carupgradepackage.png"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimentions.height10),
                        topRight: Radius.circular(Dimentions.height10)),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFE8E00),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(Dimentions.height10),
                            topRight: Radius.circular(Dimentions.height10),
                            topLeft: Radius.circular(Dimentions.height10))),
                    child: Padding(
                      padding:  EdgeInsets.only(
                          right:Dimentions.width20, left: Dimentions.width10, bottom: Dimentions.height6, top:Dimentions.height2),
                      child: RichText(
                        text: TextSpan(
                            text: "1 Month\n",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontFamily: "Montserrat",
                                fontSize: Dimentions.font10,
                                fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(
                                text: "Free Premium Trial",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontFamily: "Montserrat",
                                    fontSize: Dimentions.font10,
                                    fontWeight: FontWeight.w800),
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child:
                            SvgPicture.asset("assets/svg/bx_play-circle.svg")))
              ]),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff6739B7),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(14))),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                          horizontal: Dimentions.width20, vertical: Dimentions.height2),
                      child: Text(
                        "Recommended",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: Dimentions.font10,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  Gap(Dimentions.height10,),
                  Expanded(
                    child: RichText(
                        text: TextSpan(
                            text: "153291",
                            style: TextStyle(
                                color: Color(0xff07A605),
                                fontWeight: FontWeight.w700,
                                fontSize: Dimentions.font10,
                                fontFamily: "Montserrat"),
                            children: [
                          TextSpan(
                            text: " Happy Subscribers in your area",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w400,
                                fontSize: Dimentions.font10,
                                fontFamily: "Montserrat"),
                          )
                        ])),
                  )
                ],
              )
            ],
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: Dimentions.width7),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Standard Pack",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: Dimentions.font15,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "We all love Sparkling Cars",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: Dimentions.font10,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Montserrat"),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          "6 services",
                          style: TextStyle(
                              color: Color(0xff7B8D9E),
                              fontFamily: "Montserrat",
                              fontSize: Dimentions.font12,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  Gap(Dimentions.height3),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: Dimentions.width7),
                    child: Text(
                      "-Everything in Basic Pack and",
                      style: TextStyle(
                          color: Color(0xff7B8D9E),
                          fontSize: Dimentions.font10,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(Dimentions.height10),
                    child: Column(
                  children: [
                    Column(
                      children: List.generate(4, (index) => Row(
                        children: [
                          Container(
                            height: Dimentions.height3,
                            width: Dimentions.width3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimentions.height3),
                                color: Color(0xff7B8D9E)),
                          ),
                          Gap(Dimentions.height5),
                          Text(
                            "Exterior Foam Wash - 4 Times",
                            style: TextStyle(
                                color: Color(0xff7B8D9E),
                                fontFamily: "Montserrat",
                                fontSize: Dimentions.font10,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),),
                    ),


                    Padding(
                      padding: EdgeInsets.only(top: Dimentions.height7, left: Dimentions.width10),
                      child: Row(
                        children: [
                          Text(
                            "Special Offers",
                            style: TextStyle(
                                color: Color(0xff7B8D9E),
                                fontSize: Dimentions.font10,
                                fontFamily: "Montserrat"),
                          ),
                        ],
                      ),
                    ),
                    Gap(Dimentions.height20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimentions.height4),
                                border: Border.all(
                                    color: Color(0xff7B8D9E), width: Dimentions.width2)),
                            child: Padding(
                              padding:EdgeInsets.all(Dimentions.height3),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Save 40% Every Month",
                                    style: TextStyle(
                                        color: Color(0xff009DC7),
                                        fontSize: Dimentions.font10,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Pay via AUTOPAY ",
                                        style: TextStyle(
                                            color: Color(0xff009DC7),
                                            fontSize: Dimentions.font10,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Montserrat"),
                                      ),
                                      Gap(Dimentions.height30),
                                      SvgPicture.asset(
                                          "assets/svg_icon/Pericon.svg",
                                          color: Color(0xff009DC7))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Gap(Dimentions.height10),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimentions.height4),
                                border: Border.all(
                                    color: Color(0xff7B8D9E), width: Dimentions.width2)),
                            child: Padding(
                              padding:  EdgeInsets.all(Dimentions.height3),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Earn Cashback & Rewards Every Month",
                                    style: TextStyle(
                                        color: Color(0xff009DC7),
                                        fontSize: Dimentions.font10,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Pay via AUTOPAY ",
                                        style: TextStyle(
                                            color: Color(0xff009DC7),
                                            fontSize: Dimentions.font10,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Montserrat"),
                                      ),
                                      Gap(Dimentions.height90),
                                      Image.asset(
                                        "assets/icons/Dcircle.png",
                                        height: Dimentions.height14,
                                        width: Dimentions.width13,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                    ),
                  ),
                  CustomGradientContainer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "view more",
                        style: TextStyle(
                            color: Color(0xff6739B7),
                            fontFamily: "Montserrat",
                            fontSize: Dimentions.font9,
                            fontWeight: FontWeight.w500),
                      ),
                      Gap(Dimentions.width5),
                      SvgPicture.asset(
                          "assets/svg_icon/fluent_arrow-circle-right-32-regular (1).svg"),
                      Gap(Dimentions.width10)
                    ],
                  ),
                  Gap(Dimentions.height4)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomGradientContainer extends StatelessWidget {
  const CustomGradientContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Dimentions.height35,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(stops: [
          0.3,
          0.6,
          0.9
        ], colors: [
          Color.fromRGBO(194, 176, 226, 0.5),
          Color.fromRGBO(103, 57, 183, 0),
          Color.fromRGBO(103, 57, 183, 0),
        ])),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding:  EdgeInsets.only(left: Dimentions.width10, top: Dimentions.height2, right: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.currency_rupee,
                        size: 8, color: Color(0xff141023)),
                    Text(
                      "750",
                      style: TextStyle(
                          color: Color(0xff141023),
                          fontSize: 10,
                          fontFamily: "Montserrat",
                          decoration: TextDecoration.lineThrough),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.currency_rupee,
                        size: 12, color: Color(0xff6739B7)),
                    Text(
                      "500",
                      style: TextStyle(
                          color: Color(0xff6739B7),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Montserrat-Bold"),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Container(
              height: 24,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "First Month",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 8,
                        fontFamily: "Montserrat"),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.currency_rupee,
                        size: 8, color: Color(0xff141023)),
                    Text(
                      "649",
                      style: TextStyle(
                          color: Color(0xff141023),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          fontFamily: "Montserrat-SemiBold"),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Container(
              height: 24,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "From 01/08/22",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 8,
                        fontFamily: "Montserrat"),
                  ),
                ],
              ),
            ),
          ],
        )

        // Stack(
        //   children: [
        //     Positioned(
        //       left: 10,
        //       top: 4,
        //       child: Row(
        //         crossAxisAlignment:
        //             CrossAxisAlignment
        //                 .start,
        //         children: [
        //           Icon(Icons.currency_rupee,
        //               size: 8,
        //               color: Color(
        //                   0xff141023)),
        //           Text(
        //             "750",
        //             style: TextStyle(
        //                 color: Color(
        //                     0xff141023),
        //                 fontSize: 10,
        //                 fontFamily:
        //                     "Montserrat",
        //                 decoration:
        //                     TextDecoration
        //                         .lineThrough),
        //           )
        //         ],
        //       ),
        //     ),
        //     Positioned(
        //       left: 37,
        //       top: 8,
        //       bottom: 1,
        //       child: Row(
        //         crossAxisAlignment:
        //             CrossAxisAlignment
        //                 .start,
        //         children: [
        //           Icon(Icons.currency_rupee,
        //               size: 12,
        //               color: Color(
        //                   0xff6739B7)),
        //           Text(
        //             "500",
        //             style: TextStyle(
        //                 color: Color(
        //                     0xff6739B7),
        //                 fontWeight:
        //                     FontWeight.bold,
        //                 fontSize: 20,
        //                 fontFamily:
        //                     "Montserrat-Bold"),
        //           )
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        );
  }
}
