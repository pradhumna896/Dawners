import 'dart:convert';

import 'package:chewie/chewie.dart';
import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/custom_text_style.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/model/add_to_card_model.dart';
import 'package:dawners/model/faq_model.dart';
import 'package:dawners/model/package_details_model.dart';
import 'package:dawners/model/premium_package_details_model.dart';
import 'package:dawners/model/show_user_service_model.dart';
import 'package:dawners/model/user_banner_model.dart';
import 'package:dawners/provider/api_provider.dart';

// import 'package:dawners/model/container_slider.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/screens/helper/api_network.dart';
import 'package:dawners/screens/helper/dimentions/api_helper.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/vehiclae_Packages.dart';
import 'package:dawners/screens/set_up_payments.dart';
import 'package:dawners/screens/step_progress.dart';
import 'package:dawners/widget/container_slider.dart';
import 'package:dawners/widget/faq_page.dart';
import 'package:dawners/widget/select_your_vehicles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:dawners/helper/custom_white_botton.dart';
import 'package:http/http.dart' as http;
import 'package:video_player/video_player.dart';

class PackageDetails extends StatefulWidget {
  String id;
  String price;
  PackageDetails({Key? key,required this.id,required this.price}) : super(key: key);

  @override
  State<PackageDetails> createState() => _PackageDetailsState();
}

class _PackageDetailsState extends State<PackageDetails> {
  List<PackageDetailsModel> getPackageList = [];
  late TargetPlatform _platform;
  late VideoPlayerController _videoPlayerController1;
  late VideoPlayerController _videoPlayerController2;
  late ChewieController _chewieController;

  addToCard()async{
    setState((){
      isAdd =true;
    });

    Uri uri = Uri.parse(ApiNetwork.addToCard);
    Map<String , String > map={
      'user_id':'1',
      'package_id':widget.id,
      'price':widget.price,
      'type':'2'
    };
    final response = await http.post(uri,body: map);
    if(response.statusCode ==200){
      setState((){
        isAdd =false;
      });

      AddToCardModel addCard = AddToCardModel.fromJson(jsonDecode(response.body));
      print(addCard);
      if(addCard.result=="add to cart Successfull"){
        setState((){
          isAdd =false;
        });

        _settingModalBottomSheet(context);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Add To Card Success'),
          backgroundColor: Colors.red,
        ));
        return;

      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Add To Card Failed'),
          backgroundColor: Colors.red,
        ));
        return;
        setState((){
          isAdd =false;
        });

      }

    }
    }

  late Future bannerFuture;

  Future getBannerFuture() {
    return getUserBanner();
  }

  late Future serviceFuture;

  Future getServiceFuture() {
    return ApiHelper.getUserService();
  }



  late Future premiumPackageDetailsFuture;
  Future getPremiumPackageFuture() {
    return ApiHelper.getPremiumPackageDetails();
  }

  @override
  void initState() {
    super.initState();
    bannerFuture = getBannerFuture();
    premiumPackageDetailsFuture = getPremiumPackageFuture();
    serviceFuture = getServiceFuture();
  }


  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  List<UserBannerModel> getUserBannerList = [];

  Future getUserBanner() async {
    final response = await http.get(Uri.parse(ApiNetwork.userBanner));
    if (response.statusCode == 200) {
      print("success");
      List jsonResponse = jsonDecode(response.body);
      getUserBannerList = List<UserBannerModel>.from(
          jsonResponse.map((e) => UserBannerModel.fromJson(e)));
    } else {
      print("failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    final provider = Provider.of<ApiProvider>(context);

    final data = Provider.of<AppController>(context);
    final cardPrice = widget.price;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Package Details",
          style: KTextClass.AppBarStyle,
        ),
        centerTitle: true,
        leading: AppBarBackButton(onclick: () {
          Navigator.of(context).pop();
        }),
      ),
      body: Stack(children: [
        SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: Dimentions.height20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
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
                              fontSize: Dimentions.font24),
                        ),
                      ],
                    ),
                  ]),
            ),
            SizedBox(
              height: Dimentions.height10,
            ),
            FutureBuilder(
                future: bannerFuture,
                builder: (context, snapshot) {
                  return Stack(children: [
                    Container(
                      width: double.maxFinite,
                      height: Dimentions.height183,
                      child: PageView.builder(
                          controller: PageController(
                            initialPage: 0,
                            keepPage: true,
                          ),
                          onPageChanged: (index) {
                            data.mediaselectedPage(index);
                          },
                          itemCount: getUserBannerList.length,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, index) {
                            if (getUserBannerList[index]
                                .file!
                                .contains("mp4")) {
                              _videoPlayerController1 =
                                  VideoPlayerController.network(
                                      getUserBannerList[index].path! +
                                          getUserBannerList[index].file!);
                              _videoPlayerController2 =
                                  VideoPlayerController.network(
                                      (getUserBannerList[index].path! +
                                          getUserBannerList[index].file!));
                              _chewieController = ChewieController(
                                videoPlayerController: _videoPlayerController1,
                                aspectRatio: 6 / 3,
                                fullScreenByDefault: false,
                                allowFullScreen: true,
                                autoPlay: false,
                                zoomAndPan: true,
                                looping: false,
                                // Try playing around with some of these other options:

                                // showControls: false,
                                materialProgressColors: ChewieProgressColors(
                                  playedColor: Colors.red,
                                  handleColor: Colors.blue,
                                  backgroundColor: Colors.grey,
                                  bufferedColor: Colors.grey,
                                ),
                                // placeholder: Container(
                                //   color: Colors.grey,
                                // ),
                                // autoInitialize: true,
                              );

                              _videoPlayerController1.addListener(() {
                                if (_videoPlayerController1.value.position ==
                                    _videoPlayerController1.value.duration) {}
                              });
                            }
                            return Stack(fit: StackFit.expand, children: [
                              getUserBannerList[index].file!.contains("mp4")
                                  ? Chewie(
                                      controller: _chewieController,
                                    )
                                  : Image.network(
                                      getUserBannerList[index].path! +
                                          getUserBannerList[index].file!,
                                      fit: BoxFit.cover,
                                    ),
                              Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffFE8E00),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(
                                                Dimentions.height10))),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: Dimentions.width15,
                                          right: Dimentions.width15,
                                          bottom: Dimentions.height10),
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
                                                  fontFamily: "Montserrat"))
                                        ],
                                      ),
                                    ),
                                  )),
                              // Positioned(
                              //     top: 0,
                              //     bottom: 0,
                              //     left: 0,
                              //     right: 0,
                              //     child: Image.asset("assets/image/mediaplay.png")),
                            ]);
                          }),
                    ),
                    Positioned(
                        bottom: Dimentions.height20,
                        left: Dimentions.width10,
                        right: Dimentions.width10,
                        child: ContainerSlider(
                          getLength: getUserBannerList.length,
                        ))
                  ]);
                }),
            SizedBox(
              height: Dimentions.height10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Premium Pack"

                    ,
                    style: kFontSize15.copyWith(color: Color(0xff000000)),
                  ),
                  SizedBox(
                    height: Dimentions.height5,
                  ),
                  Text("What we use -",
                      style: kFontSize12.copyWith(color: Color(0xff7B8D9E))),
                  SizedBox(
                    height: Dimentions.height8,
                  ),
                  FutureBuilder(
                      future: premiumPackageDetailsFuture,
                      builder: (context,snapshot){return Column(
                    children: List.generate(
                      ApiHelper.premiumPackageDetailList.length,
                          (index) => Row(
                        children: [
                          Container(
                            height: Dimentions.height3,
                            width: Dimentions.width3,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(Dimentions.height3),
                                color: Color(0xff7B8D9E)),
                          ),
                          SizedBox(
                            width: Dimentions.height5,
                          ),
                          Text(ApiHelper.premiumPackageDetailList[index].rowMaterialName!,
                              style: kFontSize12.copyWith(
                                  color: Color(0xff7B8D9E),
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  );}),
                  SizedBox(
                    height: Dimentions.height15,
                  ),
                  Text(
                    "Special Offers",
                    style: TextStyle(
                        color: Color(0xff7B8D9E),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Montserrat",
                        fontSize: Dimentions.font10),
                  ),
                  SizedBox(
                    height: Dimentions.height10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimentions.width10,
                              vertical: Dimentions.height5),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimentions.height3),
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
                          width: Dimentions.width5,
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
                            color: const Color(0xff7B8D9E),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Montserrat"),
                      ),
                      Text(
                        "${ApiHelper.showUserServiceList.length} services",
                        style: TextStyle(
                            fontSize: Dimentions.font12,
                            color: const Color(0xff7B8D9E),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Montserrat"),
                      ),
                    ],
                  ),
                  Gap(Dimentions.height7),
                  FutureBuilder(
                      future: serviceFuture,
                      builder: (context,snapshot){
                    return ListView.builder(
                        itemCount: ApiHelper.showUserServiceList.length,
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(0),
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext ctx, index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.network(
                                  ApiHelper.showUserServiceList[index].path!+ApiHelper.showUserServiceList[index].logoFile!),
                              SizedBox(
                                width: Dimentions.width8,
                              ),
                              Text(
                                ApiHelper.showUserServiceList[index].servicesName!,
                                style: TextStyle(
                                    fontSize: Dimentions.font12,
                                    color: const Color(0xff7B8D9E),
                                    fontFamily: "Montserrat"),
                              ),
                            ],
                          );
                        });
                  }),
                  SizedBox(height: Dimentions.height20),
                  Text(
                    "Customer Reviews Near You",
                    style: TextStyle(
                        color: const Color(0xff7B8D9E),
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
            customerReview(context),
            SizedBox(
              height: Dimentions.height20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
              child: Row(
                children: [
                  Text(
                    "DAWNERS Benefits",
                    style: kFontSize12.copyWith(color: const Color(0xff7B8D9E)),
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
                            style: kFontSize15.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
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
                            style: kFontSize15.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
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
                            style: kFontSize15.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
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
                    FAQPage()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Dimentions.height100,
            )
          ],
        )),
        Positioned(
          bottom: 28,
          left: 28,
          right: 28,
          child: InkWell(
            onTap: () {
              addToCard();

            },
            child: isAdd?Center(child: CircularProgressIndicator(),):Container(
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
                        children: const [
                          Icon(Icons.currency_rupee,
                              size: 15, color: Color(0xffFFFFFF)),
                        ],
                      ),
                    ),
                    Text(
                      cardPrice ,
                      style: const TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 24,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Image.asset("assets/icons/verticaldivider.png"),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
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
  bool isAdd =false;




  FutureBuilder<Object?> customerReview(BuildContext context) {
    final provider = Provider.of<ApiProvider>(context);
    return FutureBuilder(
        future: provider.getAdminCommentData(),
        builder: (context, snapshot) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: Dimentions.height110,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: provider.showAdminCommentList.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimentions.width10),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: Dimentions.width275,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimentions.height3),
                          color: Color(0xffD6F6FF)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.only(top: Dimentions.height6),
                                child: Row(
                                  children: [
                                    Container(
                                      height: Dimentions.height18,
                                      width: Dimentions.width18,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff07A605)),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          child: Image.network(
                                            provider.showAdminCommentList[index]
                                                    .path! +
                                                provider
                                                    .showAdminCommentList[index]
                                                    .image!,
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    SizedBox(
                                      width: Dimentions.width12,
                                    ),
                                    Text(
                                      provider
                                          .showAdminCommentList[index].name!,
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
                                    right: Dimentions.width10,
                                    top: Dimentions.height6),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/svg_icon/fluent_star-12-filled.svg"),
                                    SizedBox(
                                      width: Dimentions.width12,
                                    ),
                                    Text(
                                      provider
                                          .showAdminCommentList[index].review!,
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
                                right: Dimentions.width10,
                                bottom: Dimentions.height5,
                                top: Dimentions.height3),
                            child: Center(
                              child: Text(
                                provider.showAdminCommentList[index].comment!,
                                overflow: TextOverflow.fade,
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
          );
        });
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
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimentions.width25),
                    child: CustomWhiteButton(),
                  ),
                  SizedBox(
                    height: Dimentions.height10,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimentions.width25),
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
                    height: Dimentions.height18,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimentions.width25),
                    child: CustomButton(
                        text: "Add To All Vehicles", onclick: () {}),
                  ),
                  SizedBox(
                    height: Dimentions.height15,
                  ),
                  Divider(
                    color: Color(0xff07A605),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimentions.width25),
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
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimentions.width25),
                    child: CustomBottonPurple(
                      height: Dimentions.height56,
                      title: 'Continue',
                      onClick: () {
                        _congratulationPopUp(context);
                      },
                    ),
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
          final provider = Provider.of<AppController>(context);
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
                    child: CustomButton(
                        text: "Great,Thanks",
                        onclick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => VehiclePackage()));
                          provider.stepperProgressPage(2);
                          provider.changeButtonName("Continue");
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => StepProgress()));
                        provider.stepperProgressPage(2);
                        provider.changeButtonName("Continue");
                      },
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
                            child: Center(
                                child: Text(
                              "Review Details",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat",
                                  color: Color(0xffFE8E00)),
                            )),
                          )),
                    ),
                  ),
                  Spacer()
                ],
              ));
        });
  }
}
/*
Column(
                             children: List.generate(
                               faqList.length,
                                   (index) => Column(
                                 children: [
                                   InkWell(
                                     onTap: () {
                                       data.onSelectIndex(index);
                                     },
                                     child: Container(
                                       child: Row(
                                         children: [
                                           Expanded(
                                               child: Container(
                                                 child: Text(
                                                     faqList[index].question!),
                                               )),
                                           Icon(Icons.keyboard_arrow_down_outlined)
                                         ],
                                       ),
                                     ),
                                   ),
                                   SizedBox(
                                     height: 5,
                                   ),
                                   Visibility(
                                       visible:
                                       data.onSelect == index ? true : false,
                                       child: Row(
                                         children: [
                                           Column(
                                             children: [
                                               Flexible(
                                                 child: Text(
                                                   faqList[index].answer!,
                                                   style: TextStyle(

                                                       fontSize: 12,
                                                       color: Color(0xff7B8D9E),
                                                       fontFamily: "Montserrat"),
                                                 ),
                                               ),
                                             ],
                                           ),
                                         ],
                                       ))
                                 ],
                               ),
                             ),
                           )
 */
