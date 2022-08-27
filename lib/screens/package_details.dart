import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/custom_text_style.dart';
import 'package:dawners/helper/ktext_class.dart';
// import 'package:dawners/model/container_slider.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/set_up_payments.dart';
import 'package:dawners/widget/container_slider.dart';
import 'package:dawners/widget/select_your_vehicles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:dawners/helper/custom_white_botton.dart';

class PackageDetails extends StatelessWidget {
 PackageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    final data = Provider.of<AppController>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Package Details",style: KTextClass.AppBarStyle,),
        centerTitle: true,
        leading: AppBarBackButton(onclick: (){Navigator.of(context).pop();}),
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Dimentions.height20,
              ),
              
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Grab The Best! ",
                          style: TextStyle(
                              color: Color(0xff0E1012),
                              fontWeight: FontWeight.w700,
                              fontSize: Dimentions.font24,
                              fontFamily: "Montserrat"),
                        ),
                        Row(
                          children: [
                            Text(
                              "Your vehicle Deserves it!",
                              style: TextStyle(
                                  color: Color(0xff0E1012),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Montserrat",
                                  fontSize: Dimentions.font24
                              ),
                            ),
                          ],
                        ),
                      ])),
              SizedBox(
                height: Dimentions.height10,
              ),
              Stack(children: [
                Container(
                  width: double.maxFinite,
                  height: Dimentions.height192,
                  child: PageView.builder(
                      controller: PageController(
                        initialPage: 0,
                        keepPage: true,
                      ),
                      onPageChanged: (index) {
                        data.mediaselectedPage(index);
                      },
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, index) {
                        return Stack(children: [
                          Image.asset(
                            "assets/image/cardcarimage.png",
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffFE8E00),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(Dimentions.height10))),
                                child: Padding(
                                  padding:EdgeInsets.only(
                                      left: Dimentions.width15, right:Dimentions.width15, bottom: Dimentions.height10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1 Month",
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontSize: Dimentions.font10,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Montserrat"),
                                      ),
                                      Text("Free Premium Add On Trial",
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: Dimentions.font10,
                                              fontWeight: FontWeight.w700,
                                              fontFamily:
                                                  "Montserrat"))
                                    ],
                                  ),
                                ),
                              )),

                          Positioned(
                              top: 0,
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Image.asset("assets/image/mediaplay.png")),
                        ]);
                      }),
                ),
                Positioned(
                    bottom: Dimentions.height20, left: Dimentions.width10, right: Dimentions.width10, child: ContainerSlider())
              ]),
              SizedBox(
                height: Dimentions.height10,
              ),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: Dimentions.width20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Premium Pack",
                      style: kFontSize15.copyWith(color: Color(0xff000000)),
                    ),
                    SizedBox(
                      height: Dimentions.height5,
                    ),
                    Text(
                      "What we use -",
                      style: kFontSize12.copyWith(color: Color(0xff7B8D9E))
                    ),
                    SizedBox(
                      height: Dimentions.height8,
                    ),
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
                          SizedBox(
                            width: Dimentions.height5,
                          ),
                          Text(
                              "Ph-Neutral Shampoo ",
                              style: kFontSize12.copyWith(color: Color(0xff7B8D9E),fontWeight: FontWeight.w500)
                          ),
                        ],
                      ),),
                    ),
                    SizedBox(
                      height: Dimentions.height15,
                    ),
                    Text(
                      "Special Offers",
                      style: TextStyle(
                          color: Color(0xff7B8D9E),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat",
                          fontSize: Dimentions.font10
                      ),
                    ),
                    SizedBox(
                      height:Dimentions.height10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: Dimentions.width10 , vertical: Dimentions.height5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimentions.height3),
                                color: Color(0xff009DC7)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Save 40% Every Month",
                                  style: TextStyle(
                                      fontSize: Dimentions.font10,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffFFFFFF)),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Pay via AUTOPAY ",
                                      style: TextStyle(
                                          fontSize: Dimentions.font10,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffFFFFFF)),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    SvgPicture.asset(
                                      "assets/svg_icon/Pericon.svg",
                                      height: 14.13,
                                      width: 13.48,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: Dimentions.width5
                            ,
                          ),
                          Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Color(0xff07A605)),
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Earn Cashback & Rewards Every Month",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffFFFFFF)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Pay via AUTOPAY ",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffFFFFFF)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Image.asset(
                                  "assets/icons/Dcircle.png",
                                  height: 14.13,
                                  width: 13.48,
                                )
                              ],
                            )
                          ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "What’s Included -",
                          style: TextStyle(
                              fontSize: Dimentions.font12,
                              color: Color(0xff7B8D9E),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Montserrat"),
                        ),
                        Text(
                          "10 services",
                          style: TextStyle(
                              fontSize: Dimentions.font12,
                              color: Color(0xff7B8D9E),
                              fontWeight:FontWeight.w700,
                              fontFamily: "Montserrat"),
                        ),
                      ],
                    ),
                    Gap(Dimentions.height7),
                    ListView.builder(
                        itemCount: 8,
                        shrinkWrap: true,
                        padding: EdgeInsets.all(0),
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext ctx, index) {
                          return Row(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                  "assets/svg_icon/fluent_checkmark-circle-12-filled.svg"),
                              SizedBox(
                                width: Dimentions.width8,
                              ),
                              Text(
                                "Exterior Cleaning - Daily  ",
                                style: TextStyle(
                                    fontSize: Dimentions.font12,
                                    color: Color(0xff7B8D9E),
                                    fontFamily: "Montserrat"),
                              ),
                            ],
                          );
                        }),
                    SizedBox(
                      height: Dimentions.height20
                    ),
                    Text(
                      "Customer Reviews Near You",
                      style: TextStyle(
                          color: Color(0xff7B8D9E),
                          fontSize: Dimentions.font12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: Dimentions.height10,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: Dimentions.height110,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding:EdgeInsets.symmetric(horizontal: Dimentions.width10),
                        child: Container(
                          width: Dimentions.width275,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimentions.height3),
                              color: Color(0xffD6F6FF)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin:
                                         EdgeInsets.only(left: Dimentions.width10, top: Dimentions.height6),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: Dimentions.height18,
                                          width: Dimentions.width18,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(Dimentions.height18),
                                              color: Color(0xff07A605)),
                                          child: Center(
                                              child: Text(
                                            "R",
                                            style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: Dimentions.font12,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: "NunitoSans"),
                                          )),
                                        ),
                                        SizedBox(
                                          width: Dimentions.width12,
                                        ),
                                        Text(
                                          "Rajit Parikh",
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: Dimentions.font12,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "NunitoSans"),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        right: Dimentions.width10, top: Dimentions.height6),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/svg_icon/fluent_star-12-filled.svg"),
                                        SizedBox(
                                          width: Dimentions.width12,
                                        ),
                                        Text(
                                          "4.4",
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: Dimentions.font10,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "NunitoSans"),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: Dimentions.width18, right:Dimentions.width10,
                                    bottom: Dimentions.height5, top: Dimentions.height3),
                                child: Center(
                                  child: Text(
                                    '''I have been using DAWNERS services for almost 6 months now and my vehicles showroom shine is back, thanks to their great service at fair price. Their Premium Pack is the best.''',

                                    overflow:TextOverflow.fade,
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: Dimentions.font12,
                                        fontFamily: "Montserrat"),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: Dimentions.height20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
                child: Row(
                  children: [
                    Text(
                      "DAWNERS Benefits",
                      style: kFontSize12.copyWith(color: Color(0xff7B8D9E)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimentions.height10,
              ),
              Container(
                width: double.maxFinite,
                color: Color(0xffFFC700),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: Dimentions.height5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: Dimentions.width81,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/fluent_contact-card-ribbon-28-filled.svg",
                            ),
                            Text(
                              "Trained Team",
                              textAlign: TextAlign.center,
                              style: kFontSize15.copyWith(fontWeight: FontWeight.w800,),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: Dimentions.width81,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                                "assets/svg/ic_twotone-workspace-premium.svg"),
                            Text(
                              "Premium Products",
                              textAlign: TextAlign.center,
                              style:  kFontSize15.copyWith(fontWeight: FontWeight.w800,),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: Dimentions.width100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                                "assets/svg/fluent_accessibility-checkmark-24-filled.svg"),
                            Text(
                              "Top Quality Packages",
                              textAlign: TextAlign.center,
                              style:  kFontSize15.copyWith(fontWeight: FontWeight.w800,),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Dimentions.height10,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Frequently Asked Questions",
                            style: TextStyle(
                                color: Color(0xff7B8D9E),
                                fontSize: Dimentions.font12,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Gap(Dimentions.height7),
                      Column(children: List.generate(10, (index) =>  Column(
                        children: [
                          InkWell(
                            onTap: () {
                              data.onSelectIndex(index);
                            },
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                      child: Text(
                                          "Why does driving my car car feels bumfy and rough on the road"),
                                    )),
                                Icon(Icons
                                    .keyboard_arrow_down_outlined)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Visibility(
                              visible: data.onSelect==index?true:false,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Answer 1",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff7B8D9E),
                                            fontFamily: "Montserrat"),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ],
                      ),),)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Dimentions.height100,
              )
            ],
          ),
        ),
        Positioned(
          bottom: 28,
          left: 28,
          right: 28,
          child: InkWell(
            onTap: () {
              _settingModalBottomSheet(context);
            },
            child: Container(
                width: double.maxFinite,
                height: 60,
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
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.currency_rupee,
                              size: 15, color: Color(0xffFFFFFF)),
                        ],
                      ),
                    ),
                    Text(
                      "500",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 24,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset("assets/icons/verticaldivider.png"),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Add to Cart",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 24,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ),
        )
      ]),
    );
  }

  void _settingModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.black87,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Container(

              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(Dimentions.height14)),
              margin: EdgeInsets.only(bottom: Dimentions.height100),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Image.asset("assets/image/popupcarimage.png"),
                  ),
                  SizedBox(
                    height: Dimentions.height20,
                  ),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal: Dimentions.width25),
                    child: CustomWhiteButton(),
                  ),
                  SizedBox(
                    height: Dimentions.height10,
                  ),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal: Dimentions.width25),
                    child: Row(
                      children: [
                        Text(
                          "Your Vehicles ",
                          style: TextStyle(
                              color: Color(0xff7B8D9E),
                              fontSize: Dimentions.font12,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimentions.height10,
                  ),
                  SelectYourVehicles(),
                  SizedBox(
                    height:Dimentions.height18,
                  ),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal:Dimentions.width25),
                    child: CustomButton(
                        text: "Add To All Vehicles", onclick: () {}),
                  ),
                  SizedBox(
                    height:Dimentions.height15,
                  ),
                  Divider(
                    color: Color(0xff07A605),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimentions.width25),
                    child: Row(
                      children: [
                        Text(
                          "TOTAL",
                          style: TextStyle(
                              color: Color(0xff07A605),
                              fontFamily: "Montserrat",
                              fontSize: Dimentions.font15,
                              fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        Icon(
                          Icons.currency_rupee,
                          color: Color(0xff07A605),
                          size: Dimentions.height20,
                        ),
                        Text(
                          "1500",
                          style: TextStyle(
                              color: Color(0xff07A605),
                              fontFamily: "Montserrat",
                              fontSize: Dimentions.font20,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xff07A605),
                  ),
                  SizedBox(
                    height: Dimentions.height15,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: Dimentions.width25),
                    child: CustomBottonPurple(height: Dimentions.height56, title: 'Continue', onClick: () {   _congratulationPopUp(context); },),
                  ),
                  Gap(Dimentions.height10)
                ],
              ));
        });
  }

  void _congratulationPopUp(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext bc) {
          return Container(

              decoration: BoxDecoration(
                  color: Color(0xb0000000),
                  borderRadius: BorderRadius.circular(14)),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Image.asset("assets/image/greatchoice.png"),
                  Gap(30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomButton(text: "Great,Thanks", onclick: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SetUpPayment()));
                    }),
                  ),
                  SizedBox(height: 10,),
                  Padding(

                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Material(
                        borderRadius: BorderRadius.circular(14),
                        elevation: 5,
                        child: Container(
                          height: 56,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
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
                          child: Center(child: Text("Review Details",style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Montserrat",
                              color: Color(0xffFE8E00)),)),
                        )),
                  ),
                  Spacer()
                ],
              ));
        });
  }
}
