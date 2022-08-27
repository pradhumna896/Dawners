import 'dart:convert';

import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/model/LandingPageVerification.dart';
import 'package:dawners/screens/custom_textfield.dart';
import 'package:dawners/screens/helper/api_network.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/login_page.dart';
import 'package:dawners/screens/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:http/http.dart' as http;

import '../helper/tool_bar.dart';

class Home extends StatefulWidget {
  final String? mobileNumber;
  Home( this.mobileNumber, {Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();
  bool isSumitted = false;

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
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width28),
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
                      hinttext: "First Name",
                      image: ("assets/svg/Fistname.svg"),
                      controller: firstNameController, keyboardtype: TextInputType.name,
                    ),
                    SizedBox(
                      height: Dimentions.height10,
                    ),
                    CustomTextField(
                      kvalidator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Pleasa enter valid input";
                        } else {
                          return null;
                        }
                      },
                      hinttext: "Last Name",
                      image: ("assets/svg/Fistname.svg"),
                      controller: lastNameController, keyboardtype: TextInputType.name,
                    ),
                    SizedBox(
                      height: Dimentions.height30,
                    ),
                    isSumitted == true ? Center(child: CircularProgressIndicator(),)
                        :CustomButton(
                      text: 'Continue',
                      onclick: () {
                        login(firstNameController.text.toString(), lastNameController.text.toString(),);

                        },
                    ),
                    SizedBox(
                      height: Dimentions.height30,
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
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 36,
                          width: 81,
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
                                        builder: (ctx) => OtpScreen(widget.mobileNumber)));
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
        ),
      ),
    );
  }

  void login(String firstName,lastName) async{

    if(firstNameController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text(
              'Please Enter A Valid Input'),backgroundColor: Colors.red,));
      return;
    }
    if(lastNameController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text(
              'Please Enter A Valid Input'),backgroundColor: Colors.red,));
      return;
    }
    setState(() {
      isSumitted =true;

    });
    Uri uri =Uri.parse(ApiNetwork.signUp);
    String username = "${firstNameController.text} ${lastNameController.text}";
    Map<String , String > map ={
      'user_name':username,
      'mobile':widget.mobileNumber!
    };

    final response = await http.post(uri,body: map,);
    if(response.statusCode==200){
      setState(() {
        isSumitted =false;

      });

      print(response.body);

      LandingPageVerification login=LandingPageVerification.fromJson(jsonDecode(response.body));

      if(login.result == 'signup Successfull'){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen(widget.mobileNumber)));

      }else{

        ScaffoldMessenger.of(context).showSnackBar(

            const SnackBar(content: Text(
                'error'),backgroundColor: Colors.red,));
        return;


      }

    }




  }
}
