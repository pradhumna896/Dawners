import 'dart:convert';

import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/model/user_info_modal.dart';

import 'package:dawners/screens/custom_textfield.dart';
import 'package:dawners/screens/helper/api_network.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/login_page.dart';
import 'package:dawners/screens/otp_screen.dart';
import 'package:dawners/screens/welcome_screen_.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:http/http.dart' as http;

import '../helper/tool_bar.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.Id}) : super(key: key);
  final String Id;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();
  bool isSumitted = false;

  void userInfo(firsName, lastName) async {
    setState(() {
      isSumitted = true;
    });
    Uri uri = Uri.parse(ApiNetwork.userInfo);
    Map<String, String> map = {
      'first_name': firsName,
      'last_name': lastName,
      'id': widget.Id
    };
    final response = await http.post(uri, body: map);

    UserInfoModal info = UserInfoModal.fromJson(jsonDecode(response.body));

    if (info.message == "user info successfully") {
      setState(() {
        isSumitted = false;
      });
      print(info.message);
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => WelcomeScreen()));
    } else {
      showSnackVar("invalid", Colors.red, context);
      setState(() {
        isSumitted = false;
      });
    }
  }

  static showSnackVar(String message, Color color, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        message,
        style: const TextStyle(fontSize: 16.0),
      ),
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
    ));
  }

  final _formkey = GlobalKey<FormState>();

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
        child: SafeArea(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: Dimentions.height20,
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
                Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                  children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Dimentions.width28),
                        child: Row(
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: "Let's,\n",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: Dimentions.font24,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "NunitoSans"),
                                    children: [
                                  TextSpan(
                                    text: "Get Started!",
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
                      SizedBox(height: Dimentions.height25),
                      Image.asset("assets/image/carwash.png"),
                      SizedBox(
                        height: Dimentions.height50,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Dimentions.width28),
                        child: Column(
                          children: [
                            CustomTextField(
                              kvalidator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return showSnackVar("Please Enter First Name",
                                      Colors.red, context);
                                } else {
                                  return null;
                                }
                              },
                              hinttext: "First Name",
                              image: ("assets/svg/Fistname.svg"),
                              controller: firstNameController,
                              keyboardtype: TextInputType.name,
                            ),
                            SizedBox(
                              height: Dimentions.height10,
                            ),
                            CustomTextField(
                              kvalidator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return showSnackVar("Please Enter Last Name",
                                      Colors.red, context);
                                } else {
                                  return null;
                                }
                              },
                              hinttext: "Last Name",
                              image: ("assets/svg/Fistname.svg"),
                              controller: lastNameController,
                              keyboardtype: TextInputType.name,
                            ),
                            SizedBox(
                              height: Dimentions.height30,
                            ),
                            isSumitted == true
                                ? Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : CustomButton(
                                    text: 'Continue',
                                    onclick: () {
                                      if (_formkey.currentState!.validate()) {
                                        userInfo(firstNameController.text,
                                            lastNameController.text);
                                      } else {
                                        showSnackVar("Enter a Valid Input",
                                            Colors.red, context);
                                      }
                                    },
                                  ),
                            SizedBox(
                              height: Dimentions.height10,
                            ),
                            Row(
                              children: [
                                Text("Already Have An Account?",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: Dimentions.font12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "NunitoSans"))
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (ctx) => LoginPage()));
                                  },
                                  child: Text("Login from here",
                                      style: TextStyle(
                                          color: Color(0xffFE8E00),
                                          fontSize: Dimentions.font18,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: "NunitoSans")),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 36,
                                  width: 81,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(10),
                                          // maximumSize: MaterialStateProperty.all(),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16))),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Color(0xff07A605))),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (ctx) =>
                                                    WelcomeScreen()));
                                      },
                                      child: Text(
                                        "Log In",
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontSize: Dimentions.font14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Montserrat"),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
