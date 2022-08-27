import 'package:dawners/helper/box_shadow.dart';

// import 'package:dawners/model/dot_slider.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/screens/custom_textfield.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/login_page.dart';
import 'package:dawners/screens/sign_up_page.dart';
import 'package:dawners/widget/dot_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:dawners/helper/custom_button.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({Key? key}) : super(key: key);
  PageController pageController = PageController();
  TextEditingController mobileController = TextEditingController();
  int index = 1;
  int currentIndex = 0;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    return Scaffold(
        backgroundColor: Color(0xff6739B7),
        body: SafeArea(
          child: Form(
            key: _formkey,
            child: Column(children: [
              Expanded(
                child: PageView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    onPageChanged: (index) {
                      data.selectedPage(index);
                    },
                    controller: PageController(
                      initialPage: 0,
                      keepPage: true,
                    ),
                    itemBuilder: (BuildContext context, index) {
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            "assets/image/Landing_page.png",
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: Dimentions.width15),
                            child: RichText(
                                text: TextSpan(
                                    text: "Welcome to,\n",
                                    style: GoogleFonts.nunitoSans(
                                      color: Color(0xffFFFFFF),
                                      fontSize: Dimentions.font20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "DAWNERS!",
                                        style: GoogleFonts.nunitoSans(
                                          color: Color(0xffFFFFFF),
                                          fontSize: Dimentions.font36,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ])),
                          ),
                        ],
                      );
                    }),
              ),
              SliderDotWidget(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width25),
                child: CustomTextField(
                  hinttext: 'Mobile Number',
                  image: 'assets/svg/mobilenumber.svg',
                  controller: mobileController,
                  kvalidator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Pleasa enter valid input";
                    } else {
                      return null;
                    }
                  }, keyboardtype: TextInputType.number,
                ),
              ),
              Gap(Dimentions.height18),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width25),
                child: CustomButton(
                    text: "Continue",
                    onclick: () {
                      if (mobileController.text.length < 10) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(
                                'Enter 10 digit mobile number'),backgroundColor: Colors.red,));
                        return;
                      }
                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: Home(mobileController.text),
                            inheritTheme: true,
                            ctx: context),
                      );
                    }),
              ),
              SizedBox(
                height: Dimentions.height30,
              ),
            ]),
          ),
        ));
  }
}
