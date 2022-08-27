import 'package:dawners/helper/box_shadow.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/helper/tool_bar.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/step_progress.dart';
import 'package:dawners/screens/welcome_screen_.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class PasswordScreen extends StatefulWidget {
  PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool isobscure = true;
  bool isobscure_conform =true;



  @override
  Widget build(BuildContext context) {
    print("height"+MediaQuery.of(context).size.height.toString());
    print("width"+MediaQuery.of(context).size.width.toString());
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
        child: Column(
          children: [
            SizedBox(
              height: Dimentions.height56,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: ToolBar(text: 'SIGN UP',),
            ),
            SizedBox(height: 30,),
            Expanded(child:
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
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
                                  text: "Set Security!",
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
                Image.asset("assets/icons/Securityicon.png"),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(children: [
                    // TextFormField(
                    //   textInputAction: TextInputAction.next,
                    //
                    //   obscureText: isobscure,
                    //   decoration: InputDecoration(
                    //
                    //     // contentPadding: EdgeInsets.symmetric(horizontal: 26,vertical: 23),
                    //       prefixIcon: Padding(
                    //         padding: const EdgeInsets.symmetric(horizontal: 20),
                    //         child: Image.asset("assets/icons/enterpassicon.png",height: 20,width: 27,),
                    //       ),
                    //       suffixIcon: IconButton(
                    //
                    //         icon: Icon( isobscure==false? Icons.visibility:Icons.visibility_off,
                    //         ),
                    //         onPressed: (){
                    //           setState(() {
                    //             isobscure=!isobscure;
                    //
                    //           });
                    //         },
                    //       ),
                    //       filled: true,
                    //       fillColor: Color(0xffFFFFFF),
                    //       border: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(20)
                    //       ),
                    //       hintText: "Enter Password",
                    //       hintStyle: TextStyle(color: Color(0xff7B8D9E),fontSize: 18,fontFamily: "Montserrat")
                    //   ),
                    // ),
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
                        hintStyle: ksubHeading.copyWith(fontWeight: FontWeight.w400,fontSize: 18),
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
                    SizedBox(height: 10,),
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
                            hintStyle: ksubHeading.copyWith(fontWeight: FontWeight.w400,fontSize: 18),
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
                    const SizedBox(height: 30,),
                    CustomButton(text: 'Sign Me Up!', onclick: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const WelcomeScreen()));
                    }),

                  ],),
                )
              ],),
            ))



          ],
        ),
      ),
    );
  }
}


