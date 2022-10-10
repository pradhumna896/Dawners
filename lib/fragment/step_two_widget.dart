import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/custom_text.dart';
import 'package:dawners/helper/ktext_class.dart';

// import 'package:dawners/pages/package_page_screen.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/screens/custom_textfield.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/package_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class StepTwoWidget extends StatelessWidget {
  const StepTwoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    return Column(

      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Specially Curated for you",
                    style: TextStyle(
                        color: Color(0xff0E1012),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Montserrat"),
                  ),
                ],
              ),


            ],
          ),
        ),
         Expanded(child: ListView.builder(
             itemCount: 3,
             itemBuilder: (BuildContext context ,index){
           return choosePackage(context);
         })),

         Divider(
           height: 5,
           color: Color(0xff07A605),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 27),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 "TOTAL",
                 style: TextStyle(
                     color: Color(0xff07A605),
                     fontSize: 15,
                     fontWeight: FontWeight.w700,
                     fontFamily: "Montserrat"),
               ),
               Container(
                 child: Row(
                   children: [
                     Icon(
                       Icons.currency_rupee_sharp,
                       color: Color(0xff07A605),
                       size: 12.5,
                     ),
                     Text(
                       "499",
                       style: TextStyle(
                           color: Color(0xff07A605),
                           fontSize: 15,
                           fontFamily: "Montserrat",
                           fontWeight: FontWeight.w700),
                     ),
                   ],
                 ),
               )
             ],
           ),
         ),
         Divider(
           height: 5,
           color: Color(0xff07A605),
         ),
         SizedBox(
           height: 20,
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 24),
           child: CustomButton(
             text: data.buttonName,
             onclick: () {
               data.stepperProgressPage(3);
             },
           ),
         ),

        Gap(20)
      ],
    );
  }

  Container choosePackage(BuildContext context) {
    return Container(
           padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
           child: Column(children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   "Vehicle Number 1",
                   style: TextStyle(
                       color: Color(0xff0072F9),
                       fontSize: 16,
                       fontFamily: "Montserrat",
                       fontWeight: FontWeight.w700),
                 ),
                 SizedBox(
                   width: 10,
                 ),
                 SvgPicture.asset("assets/svg/fluent_edit-28-filled.svg"),
                 Spacer(),
                 const Text(
                   "Enter Vehicle Name or Number",
                   style: TextStyle(
                       color: Color(0xff7B8D9E),
                       fontSize: 10,
                       fontWeight: FontWeight.bold,
                       fontFamily: "Montserrat-Bold"),
                 )
               ],
             ),
             SizedBox(
               height: 10,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   // color: Colors.black,
                   child: Column(
                     children: [
                       Container(
                         height: 94,
                         width: 150,
                         decoration: BoxDecoration(
                             color: Color(0xffE1D7F1),
                             borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(20),
                                 topRight: Radius.circular(20))),
                         child: Image.asset("assets/image/carimage.png"),
                       ),
                       Container(
                         width: 150,
                         height: 37,
                         decoration: BoxDecoration(
                             gradient: LinearGradient(
                               begin: Alignment.bottomCenter,
                               end: Alignment.topCenter,
                               colors: [
                                 Colors.deepPurple.shade900,
                                 Color(0xff6739B7),
                                 Color(0xff6739B7),
                                 Color(0xff6739B7),
                               ],
                             ),
                             borderRadius: BorderRadius.only(
                                 bottomLeft: Radius.circular(20),
                                 bottomRight: Radius.circular(20)),
                             color: Color(0xff6A3ABC)),
                         child: Center(
                           child: Text(
                             "Hatchback",
                             style: TextStyle(
                                 color: Color(0xffFFFFFF),
                                 fontWeight: FontWeight.w700,
                                 fontSize: 14,
                                 fontFamily: "Montserrat"),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 InkWell(
                   onTap: () {
                     AddVehicleDetails(context);
                   },
                   child: Container(
                     child: Column(
                       children: [
                         Container(
                           height: 94,
                           width: 150,
                           decoration: BoxDecoration(
                               color: Color(0xffE1D7F1),
                               borderRadius: BorderRadius.only(
                                   topLeft: Radius.circular(20),
                                   topRight: Radius.circular(20))),
                           child: Center(
                             child: Image.asset(
                                 "assets/icons/purplepackage.png"),
                           ),
                         ),
                         Container(
                           height: 37,
                           width: 150,
                           decoration: const BoxDecoration(
                               gradient: kPurplegradient,
                               borderRadius: BorderRadius.only(
                                   bottomLeft: Radius.circular(20),
                                   bottomRight: Radius.circular(20)),
                               color: Color(0xff6A3ABC)),
                           child: Center(
                             child: Text(
                               "Choose Package",
                               style: TextStyle(
                                   color: Color(0xffFFFFFF),
                                   fontWeight: FontWeight.w700,
                                   fontSize: 14,
                                   fontFamily: "Montserrat"),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
               ],
             ),
           ],),
         );
  }

  void AddVehicleDetails(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Gap(10),
                  CustomText(
                      title: "Add Vehicle Details",
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                      fontSize: 20),

                  Gap(30),
                  Row(
                    children: [
                      CustomText(title: "ENTER VEHICLE NAME",
                          textAlign: TextAlign.start, fontWeight: FontWeight.w400, color: Color(0xff000000), fontSize: 11),
                    ],
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(Dimentions.height14),
                    elevation: 5,
                    child: Container(
                      width: double.maxFinite,
                      height: Dimentions.height56,
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
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(Dimentions.height14),
                              borderSide: BorderSide(
                                color: Colors.white,
                              )),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(Dimentions.height14),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  Row(
                    children: [
                      CustomText(title: "ENTER VEHICLE REGISTRATION NUMBER",
                          textAlign: TextAlign.start, fontWeight: FontWeight.w400, color: Color(0xff000000), fontSize: 11),
                    ],
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(Dimentions.height14),
                    elevation: 5,
                    child: Container(
                      width: double.maxFinite,
                      height: Dimentions.height56,
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
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(Dimentions.height14),
                              borderSide: BorderSide(
                                color: Colors.white,
                              )),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(Dimentions.height14),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(40),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => PackagePageScreen()));
                    },
                    child: Container(
                      height: 45,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          gradient: kPurplegradient,
                          borderRadius: BorderRadius.circular(14),
                          color: Color(0xff6A3ABC)),
                      child: Center(
                        child: Text(
                          "CONTINUE",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 14,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ),
                  Gap(20)
                ],
              ),
            ),
          );
        });
  }
}

/*

 */