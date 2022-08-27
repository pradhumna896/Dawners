import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/tool_bar.dart';
import 'package:dawners/screens/loginPage/loginWelcomScreen.dart';
import 'package:dawners/screens/password_screen.dart';
import 'package:dawners/screens/welcome_screen_.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

class OtpLoginScreen extends StatelessWidget {
  const OtpLoginScreen({Key? key}) : super(key: key);

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
                child: Column(children: [
                  SizedBox(
                    height: 55,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: ToolBar(text: 'SIGN UP',),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                      children: [
                        RichText(
                            text: const TextSpan(
                                text: "Please,\n",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "NunitoSans"),
                                children: [
                                  TextSpan(
                                    text: "Enter OTP!",
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
                  SizedBox(height: 27,),
                  Image.asset("assets/icons/massegeicon.png"),
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
                      SizedBox(height: 30,),
                      CustomButton(text: 'Submit', onclick: (){
                        Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: LoginWelcomeScreen(),
                              inheritTheme: true,
                              ctx: context),);
                      }),
                      SizedBox(height: 30,),
                      Row(children: [
                        Text("Didnt receive OTP?",  style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "NunitoSans"))
                      ],),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(
                            width: 121,
                            height: 36,
                            child: OutlinedButton(
                                style: ButtonStyle(
                                    side: MaterialStateProperty.all(
                                        BorderSide(color: Color(0xffFFFFFF))),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(16)),
                                    )),
                                onPressed: () {},
                                child: Text("Resent OTP", style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "NunitoSans"))),
                          ),
                        ],
                      ),
                    ],),
                  )
                ]
                )
            )
        )
    );
  }
}
