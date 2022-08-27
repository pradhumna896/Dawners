import 'dart:convert';

import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/tool_bar.dart';
import 'package:dawners/model/OtpVerification.dart';
import 'package:dawners/model/ResendOtp.dart';
import 'package:dawners/screens/helper/api_network.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/password_screen.dart';
import 'package:dawners/screens/welcome_screen_.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:http/http.dart' as http;

class OtpScreen extends StatefulWidget {
  String? mobileNumber;

  OtpScreen(this.mobileNumber, {Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  bool isSumitted = false;
  bool isResendSumitted = false;
  TextEditingController firstDigitController = TextEditingController();
  TextEditingController secondDigitController = TextEditingController();
  TextEditingController thirdDigitController = TextEditingController();
  TextEditingController fourthDigitController = TextEditingController();

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
                height: Dimentions.height56,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width28),
                child: ToolBar(
                  text: 'SIGN UP',
                ),
              ),
              SizedBox(
                height: Dimentions.height30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width28),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Please,\n",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: Dimentions.font24,
                                fontWeight: FontWeight.w700,
                                fontFamily: "NunitoSans"),
                            children: [
                          TextSpan(
                            text: "Enter OTP!",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: Dimentions.font48,
                                fontWeight: FontWeight.w700,
                                fontFamily: "NunitoSans"),
                          )
                        ])),
                  ],
                ),
              ),
              SizedBox(
                height: Dimentions.height30,
              ),
              Image.asset("assets/icons/massegeicon.png"),
              SizedBox(
                height: Dimentions.height56,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:Dimentions.width28),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: Dimentions.height60,
                              width: Dimentions.height60,
                              child: TextFormField(
                                controller: firstDigitController,
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
                                            BorderRadius.circular(Dimentions.height20))),
                              ),
                            )),
                        SizedBox(
                          width: Dimentions.width18,
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: Dimentions.height60,
                              width: Dimentions.height60,
                              child: TextFormField(
                                controller: secondDigitController,
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
                                            BorderRadius.circular(Dimentions.height20))),
                              ),
                            )),
                        SizedBox(
                          width: Dimentions.width18,
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: Dimentions.height60,
                              width: Dimentions.height60,
                              child: TextFormField(
                                controller: thirdDigitController,
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
                                            BorderRadius.circular(Dimentions.height20))),
                              ),
                            )),
                        SizedBox(
                          width: Dimentions.width18,
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: Dimentions.height60,
                              width: Dimentions.height60,
                              child: TextFormField(
                                controller: fourthDigitController,
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
                                            BorderRadius.circular(Dimentions.height20))),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: Dimentions.height30,
                    ),
                    isSumitted == true
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : CustomButton(
                            text: 'Submit',
                            onclick: () {
                              otpVerify(
                                  firstDigitController.text.toString(),
                                  secondDigitController.text.toString(),
                                  thirdDigitController.text.toString(),
                                  fourthDigitController.text.toString());
                            }),
                    SizedBox(
                      height: Dimentions.height30,
                    ),
                    Row(
                      children: [
                        Text("Didnt receive OTP?",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: Dimentions.font12,
                                fontWeight: FontWeight.w500,
                                fontFamily: "NunitoSans"))
                      ],
                    ),
                    SizedBox(
                      height: Dimentions.height10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          child: isResendSumitted == true
                              ? Center(
                            child: CircularProgressIndicator(),
                          ): OutlinedButton(
                              style: ButtonStyle(
                                  side: MaterialStateProperty.all(
                                      BorderSide(color: Color(0xffFFFFFF))),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Dimentions.height15)),
                                  )),
                              onPressed: () {
                                resendOtp();

                              },
                              child: Text("Resent OTP",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: Dimentions.font14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "NunitoSans"))),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]))));
  }

  void otpVerify(String otp1, otp2, otp3, otp4) async {
    if (firstDigitController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please Enter A Valid Input')));
      return;
    }
    if (secondDigitController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please Enter A Valid Input')));
      return;
    }
    if (thirdDigitController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please Enter A Valid Input')));
      return;
    }
    if (fourthDigitController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please Enter A Valid Input')));
      return;
    }

    setState(() {
      isSumitted = true;
    });
    Uri uri = Uri.parse(ApiNetwork.otpVerify);
    String username =
        "${firstDigitController.text}${secondDigitController.text}${thirdDigitController.text}${fourthDigitController.text}";
    Map<String, String> map = {
      'otp': username,
      'mobile': widget.mobileNumber!
    };
    print(map);

    final response = await http.post(
      uri,
      body: map,
    );
    if (response.statusCode == 200) {
      setState(() {
        isSumitted = false;
      });

      print(response.body);

      OtpVerify otpVerify = OtpVerify.fromJson(jsonDecode(response.body));

      if (otpVerify.message == 'verify successfully') {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WelcomeScreen()));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Please Enter A Valid OTP'),backgroundColor: Colors.red,));
        return;
      }
    }
  }

  void resendOtp() async {
    setState(() {
      isResendSumitted = true;
    });
    Uri uri = Uri.parse(ApiNetwork.resendOtp);

    Map<String, String> map = {

      'mobile': widget.mobileNumber!
    };
    print(map);

    final response = await http.post(
      uri,
      body: map,
    );
    if (response.statusCode == 200) {
      setState(() {
        isResendSumitted = false;
      });

      print(response.body);

      ResendOtp resendOtp = ResendOtp.fromJson(jsonDecode(response.body));

      if (resendOtp.message == 'otp send successfully') {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('OTP Send Successfully')));
        return;

      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('error')));
        return;
      }
    }
  }
}
