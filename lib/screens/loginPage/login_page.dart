import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/tool_bar.dart';
import 'package:dawners/screens/custom_textfield.dart';
import 'package:dawners/screens/forgotPassword/forgot_password.dart';

import 'package:dawners/screens/loginPage/otp_login_screen.dart';
import 'package:dawners/screens/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:page_transition/page_transition.dart';

import '../helper/tool_bar.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6739B7),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff5D31DA), Color(0xff6739B7)],
        )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 55,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: ToolBar(
                  text: 'SIGN IN',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Let's,\n",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: "NunitoSans"),
                            children: [
                          TextSpan(
                            text: "Sign You In!",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                                fontFamily: "NunitoSans"),
                          )
                        ])),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Image.asset("assets/image/carwash.png"),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  children: [
                    CustomTextField(
                      kvalidator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Pleasa enter valid input";
                        } else {
                          return null;
                        }
                      },
                      hinttext: "Mobile Number",
                      image: ("assets/svg/mobilenumber.svg"),
                      controller: mobileController,
                      keyboardtype: TextInputType.number,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      kvalidator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Pleasa enter valid input";
                        } else {
                          return null;
                        }
                      },
                      hinttext: "Enter Password",
                      image: ("assets/svg/Fistname.svg"),
                      controller: passwordController,
                      keyboardtype: TextInputType.visiblePassword,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      text: 'Continue',
                      onclick: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: OtpLoginScreen(),
                              inheritTheme: true,
                              ctx: context),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (CTX) => ForgotPassword()));
                          },
                          child: Text("Forgot Password ?",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "NunitoSans")),
                        )
                      ],
                    ),
                    Gap(4),
                    Row(
                      children: [
                        Text("Don’t have an account?",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: "NunitoSans"))
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text("Create from here",
                              style: TextStyle(
                                  color: Color(0xffFE8E00),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "NunitoSans")),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(10),
                                    // maximumSize: MaterialStateProperty.all(),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16))),
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xff07A605))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (ctx) => OtpLoginScreen()));
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Montserrat"),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
