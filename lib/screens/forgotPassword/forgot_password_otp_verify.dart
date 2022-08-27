import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/tool_bar.dart';
import 'package:dawners/screens/forgotPassword/reset_password.dart';
import 'package:dawners/screens/password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:page_transition/page_transition.dart';

class ForgotPasswordOtpScreen extends StatelessWidget {
  const ForgotPasswordOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff6739B7),
        body: Container(
            height: double.maxFinite,
            width: MediaQuery
                .of(context)
                .size
                .width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff5D31DA), Color(0xff6739B7)],
                )),
            child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    height: 55,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: ToolBar(text: 'Verify OTP',),
                  ),
                  Gap(35),
                  Image.asset("assets/icons/massegeicon.png"),
                  Gap(10),
                  Text("verification", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat",
                      fontSize: 20,
                      color: Color(0xffFFFFFF)),),
                  Gap(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Text("Enter The Verification Code We Just Sent You On Your Mobile Number.", textAlign:TextAlign.center,style: TextStyle(

                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color(0xffFFFFFF)),),
                  ),
                  SizedBox(height: 66,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Column(children: [
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 60,
                                width: 60,
                                child: TextFormField(
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  onChanged: (val) {
                                    if (val.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(20))),
                                ),
                              )),
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 60,
                                width: 60,
                                child: TextFormField(
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  onChanged: (val) {
                                    if (val.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(20))),
                                ),
                              )),
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 60,
                                width: 60,
                                child: TextFormField(
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  onChanged: (val) {
                                    if (val.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(20))),
                                ),
                              )),
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 60,
                                width: 60,
                                child: TextFormField(
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  onChanged: (val) {
                                    if (val.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(20))),
                                ),
                              ))
                        ],
                      ),
                      Gap(40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Didnt receive OTP?", style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat")),
                        SizedBox(
                          width: 121,
                          height: 36,
                          child: OutlinedButton(
                              style: ButtonStyle(
                                  side: MaterialStateProperty.all(
                                      BorderSide(color: Color(0xffFFFFFF))),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            16)),
                                  )),
                              onPressed: () {},
                              child: Text("Resent OTP", style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat"))),
                        ),
                      ],),
                     Gap(57),
                      CustomButton(text: 'Verify OTP', onclick: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: ResetPassword(),
                              inheritTheme: true,
                              ctx: context),);
                      }),
                      SizedBox(height: 30,),

                      SizedBox(height: 10,),

                    ],),
                  )
                ]
                )
            )
        )
    );
  }
}
