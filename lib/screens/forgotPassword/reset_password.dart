import 'package:dawners/helper/box_shadow.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/helper/tool_bar.dart';
import 'package:dawners/screens/custom_textfield.dart';
import 'package:dawners/screens/forgotPassword/forgot_password_otp_verify.dart';
import 'package:dawners/screens/loginPage/login_page.dart';
import 'package:dawners/screens/password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:page_transition/page_transition.dart';
import 'package:dawners/screens/forgotPassword/forgot_password.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool isobscure =true;

  bool isobscure_conform =true;

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
                      text: 'Verify OTP',
                    ),
                    Gap(53),

                    Image.asset("assets/image/resetpasswordimage.png"),
                    Gap(10),
                    Text(
                      "Reset Password ?",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 20,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700),
                    ),
                    Gap(20),
                    Text(
                      "Set New Password For Your Account So You Can  Login And Access All The Features. ",
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
                    Material(
                      borderRadius: BorderRadius.circular(14),
                      elevation: 5,
                      child: Container(
                        width: double.maxFinite,
                        height: 56,
                        decoration: BoxDecoration(

                          color: Color(0xffFAA53A),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomLeft,
                              // stops: [0.3,0.6,0.9],
                              colors: [
                                Color(0xffe3e7ee),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                // Color(0xffA9ADB4),
                              ]),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        // child:Center(
                        //     child: Text(text, style: TextStyle(
                        //     color: Color(0xffFFFFFF),
                        //     fontSize: 24,
                        //     fontWeight: FontWeight.w700,
                        //     fontFamily: "Montserrat"
                        // ),))
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          obscureText: isobscure,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(

                              icon: Icon( isobscure==false? Icons.visibility:Icons.visibility_off,
                              ),
                              onPressed: (){
                                setState(() {
                                  isobscure=!isobscure;

                                });
                              },
                            ),

                            hintText: "Enter Password",
                            hintStyle: ksubHeading.copyWith(fontSize: 15,fontWeight: FontWeight.w400),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: SvgPicture.asset("assets/svg/enterpass.svg"),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Gap(20),
                    Material(
                      borderRadius: BorderRadius.circular(14),
                      elevation: 5,
                      child: Container(
                        width: double.maxFinite,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Color(0xffFAA53A),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomLeft,
                              // stops: [0.3,0.6,0.9],
                              colors: [
                                Color(0xffe3e7ee),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                // Color(0xffA9ADB4),
                              ]),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextFormField(
                          textInputAction: TextInputAction.done,
                          obscureText: isobscure_conform,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(

                              icon: Icon( isobscure_conform==false? Icons.visibility:Icons.visibility_off,
                              ),
                              onPressed: (){
                                setState(() {
                                  isobscure_conform=!isobscure_conform;

                                });
                              },
                            ),

                            hintText: "Confirm Password",
                            hintStyle: ksubHeading.copyWith(fontWeight: FontWeight.w400,fontSize: 15),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: SvgPicture.asset("assets/svg/confirmpass.svg"),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Gap(54),
                    CustomButton(text: "Reset Password", onclick: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>LoginPage()));

                    })
                  ]),
                ))));
  }
}
