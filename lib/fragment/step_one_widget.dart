import 'dart:convert';

import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/model/add_vehicle_modal.dart';
import 'package:dawners/provider/api_provider.dart';

import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/screens/helper/api_network.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class StepOneWidget extends StatefulWidget {
  const StepOneWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<StepOneWidget> createState() => _StepOneWidgetState();
}

class _StepOneWidgetState extends State<StepOneWidget> {


  bool isSummited = false;




  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    final apiData = Provider.of<ApiProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Your Vehicle Type",
                style: TextStyle(
                    color: Color(0xff0E1012),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Montserrat"),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Text(
                "Choose One or Multiple",
                style: TextStyle(
                    color: Color(0xff7B8D9E),
                    fontSize: 12,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          FutureBuilder<AddVehicleModal>(
            future: apiData.getVehicle(),
            builder: (context, snapshot) {

              if(snapshot.connectionState == ConnectionState.waiting){
                return const Center(child: CupertinoActivityIndicator(radius: 20,),);
              }

              List<AddVehicleData> data = snapshot.data!.data!;

              if(data.isEmpty){
                return Text('Data empty');
              }
              return Expanded(
                child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount:data.length,
                    physics: const BouncingScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      // mainAxisExtent: 200,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2),
                    itemBuilder: (BuildContext context, index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              apiData.isSelectedContainer(index);
                            },
                            child: Container(
                              height: 94,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: index == 0 || index == 3
                                      ? Color(0xffE1D7F1)
                                      : index == 2 || index == 5
                                      ? Color(0xffFAF1DF)
                                      : Color(0xffD6F6FF),
                                  border: Border.all(
                                      color: apiData.selectContainer == index
                                          ? const Color(0xffFE8E00)
                                          : Color(0xffFFFFFF)),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child:
                              ClipRRect(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  child: Image.network(data[index].path!+data[index].image!,fit: BoxFit.fill,)),
                            ),
                          ),
                          InkWell(
                            onTap: () {apiData.isSelectedContainer(index);},
                            child: Container(
                              width: 150,
                              height: 35,
                              decoration: BoxDecoration(
                                  gradient: index == 0 || index == 3
                                      ? LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.deepPurple.shade900,
                                      const Color(0xff6739B7),
                                      const Color(0xff6739B7),
                                      const Color(0xff6739B7),
                                    ],
                                  )
                                      : index == 2 || index == 5
                                      ? const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomLeft,
                                      // stops: [0.3,0.6,0.9],
                                      colors: [
                                        Color(0xffFAA53A),
                                        Color(0xffFE8E00),
                                        Color(0xffFE8E00),
                                        Color(0xffC06B00),
                                      ])
                                      : const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomLeft,
                                      // stops: [0.3,0.6,0.9],
                                      colors: [
                                        Color(0xff00A3CF),
                                        Color(0xff3DB4D4),
                                        Color(0xff3DB4D4),
                                        Color(0xff00A3CF),
                                      ]),
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  color: Color(0xff6A3ABC)),
                              child: Center(
                                child: Text(
                                  data[index].vehicleName!,
                                  style: const TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Montserrat"),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 15,
                            width: 73,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                    onTap: () {
                                      apiData.selectContainer = index;
                                      apiData.quantitiMinus();
                                    },
                                    child: SvgPicture.asset(
                                        "assets/svg_icon/minusicon.svg")),
                                Text(
                                  data[index].quantity!,
                                  style: TextStyle(
                                      color: Color(0xff6739B7),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Montserrat"),
                                ),
                                InkWell(
                                  onTap: () {
                                   apiData.isSelectedContainer(index);
                                   data[index].quantity!;
                                  },
                                  child: SvgPicture.asset(
                                      "assets/svg_icon/fa_plus-square-o.svg"),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    }),
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomButton(
              text: 'Continue',
              onclick: () {
                data.stepperProgressPage(2);
              },
            ),
          ),
          Gap(Dimentions.height20)
        ],
      ),
    );
  }
}
