import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/tool_bar.dart';
import 'package:dawners/screens/custom_textfield.dart';
import 'package:dawners/screens/forgotPassword/forgot_password_otp_verify.dart';
import 'package:dawners/screens/password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:page_transition/page_transition.dart';
import 'package:dawners/screens/forgotPassword/forgot_password.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);
  TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff6739B7),
        body: Container(
            height: double.maxFinite,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff5D31DA), Color(0xff6739B7)],
            )),
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(children: [
                SizedBox(
                  height: 55,
                ),
                ToolBar(
                  text: 'Forgot Password',
                ),
                Gap(53),
                Image.asset("assets/image/lockimage.png"),
                Gap(10),
                Text(
                  "Forgot Password ?",
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 23,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700),
                ),
                Gap(20),
                Text(
                  "Enter The Mobile Number Associated With Your Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 15,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 66,
                ),
                CustomTextField(
                  kvalidator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Pleasa enter valid input";
                    } else {
                      return null;
                    }
                  },
                  hinttext: "Mobile Number",
                  image: "assets/svg/mobilenumber.svg",
                  controller: mobileController,
                  keyboardtype: TextInputType.visiblePassword,
                ),
                Gap(89),
                CustomButton(
                    text: "Send OTP",
                    onclick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) =>
                                  const ForgotPasswordOtpScreen()));
                    })
              ]),
            ))));
  }
}
