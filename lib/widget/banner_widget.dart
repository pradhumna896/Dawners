import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/widget/set_up_payment_dot_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class BannerWidget extends StatelessWidget {
   BannerWidget({
    Key? key,

  }) : super(key: key);

  final PageController _pageController = PageController();



  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height * 0.3,
          child: PageView.builder(
            onPageChanged: (index) {
              data.paymentCurrentIndexPageviewJackpot(index);
            },
            itemCount: 3,
            controller: _pageController,
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
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimentions.width12,
                            vertical: Dimentions.height8),
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
                        child: Center(
                            child: Text(
                          "Subscribe Now",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: Dimentions.font14,
                              fontFamily: "NunitoSans"),
                        )),
                      ),
                    )
                  ],
                );
              });
            },
          ),
        ),
        SetUpPaymentSliderDotWidget(length: 3,),
      ],
    );
  }
}
