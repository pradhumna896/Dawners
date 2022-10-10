import 'dart:convert';

import 'package:dawners/model/info_model.dart';
import 'package:dawners/screens/details_edit_screen.dart';
import 'package:dawners/screens/helper/api_network.dart';
import 'package:dawners/screens/loginPage/loginHelper/profile_detail.dart';
import 'package:dawners/screens/loginPage/vehiclae_Packages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:http/http.dart' as http;

class LoginConfirmDetails extends StatefulWidget {
  LoginConfirmDetails({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginConfirmDetails> createState() => _LoginConfirmDetailsState();
}

class _LoginConfirmDetailsState extends State<LoginConfirmDetails> {
  @override
  void initState() {
    infoModelFuture = showInfo();

    super.initState();
  }

  String name = "";
  String mobile = "";
  String flatNumber = "";
  String societyName = "";

  late Future<InfoModel> infoModelFuture;

  Future<InfoModel> showInfo() async {
    final response = await http.post(Uri.parse(ApiNetwork.info), body: {
      "user_id": "1",
    });

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      print(jsonResponse);
      return InfoModel.fromJson(jsonResponse);
    } else {
      return InfoModel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Confirm Details",
          style: TextStyle(
              color: Color(0xff0E1012),
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: "Montserrat"),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  "Review Profile Details",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Montserrat"),
                ),
              ],
            ),
          ),
          Gap(20),
          FutureBuilder<InfoModel>(
              future: infoModelFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }
                name = snapshot.data!.data!.userName!;
                mobile = snapshot.data!.data!.mobile!;
                flatNumber = snapshot.data!.data!.flatNumber!;
                societyName = snapshot.data!.societyAddress!.societyName!;

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Color(0xff6739B7), width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(20),
                          profileDetail(
                            title: "Name",
                            icon: 'assets/svg_icon/fluent_person-16-filled.svg',
                            subtitle: snapshot.data!.data!.userName!,
                          ),
                          Gap(20),
                          profileDetail(
                              icon: "assets/svg_icon/mobile_icon.svg",
                              subtitle: snapshot.data!.data!.mobile!,
                              title: "Mobile Number"),
                          Gap(20),
                          profileDetail(
                              icon:
                                  "assets/svg_icon/fluent_home-person-20-filled.svg",
                              subtitle: snapshot.data!.data!.flatNumber!,
                              title: "Flate Number"),
                          Gap(20),
                          profileDetail(
                              icon: "assets/svg/Societyname.svg",
                              subtitle:
                                  snapshot.data!.societyAddress!.societyName!,
                              title: "Society Name")
                        ],
                      ),
                    ),
                  ),
                );
              }),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => DetailsEditScreen(
                                      name: name,
                                      mobile: mobile,
                                      flatNumber: flatNumber,
                                      societyName: societyName,
                                    )));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border:
                                Border.all(color: Color(0xff6739B7), width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 29, vertical: 7),
                          child: Text(
                            "EDIT",
                            style: TextStyle(
                                color: Color(0xff6739B7),
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    Gap(30),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => VehiclePackage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff6739B7),
                            borderRadius: BorderRadius.circular(14),
                            border:
                                Border.all(color: Color(0xff6739B7), width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 29, vertical: 7),
                          child: Text(
                            "Confirm",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
