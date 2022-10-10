import 'dart:convert';

import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/custom_text.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/model/edit_info_model.dart';
import 'package:dawners/screens/helper/api_network.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:http/http.dart' as http;

class DetailsEditScreen extends StatefulWidget {
  String name;
  String mobile;
  String flatNumber;
  String societyName;

  DetailsEditScreen(
      {Key? key,
      required this.name,
      required this.mobile,
      required this.flatNumber,
      required this.societyName})
      : super(key: key);

  @override
  State<DetailsEditScreen> createState() => _DetailsEditScreenState();
}

class _DetailsEditScreenState extends State<DetailsEditScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController flateController = TextEditingController();
  TextEditingController societyController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    nameController.text = widget.name;
    mobileController.text = widget.mobile;
    flateController.text = widget.flatNumber;
    societyController.text = widget.societyName;
    super.initState();
  }
bool isSummited=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: AppBarBackButton(onclick: () {
          Navigator.pop(context);
        }),
        title: Text(
          "Confirm Details",
          style: KTextClass.AppBarStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomText(
                            title: "Full Name",
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7B8D9E),
                            fontSize: 20),
                      ],
                    ),
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                    Gap(10),
                    Row(
                      children: [
                        CustomText(
                            title: "Mobile Number",
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7B8D9E),
                            fontSize: 20),
                      ],
                    ),
                    TextFormField(
                      controller: mobileController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                    Gap(10),
                    Row(
                      children: [
                        CustomText(
                            title: "Flate Number",
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7B8D9E),
                            fontSize: 20),
                      ],
                    ),
                    TextFormField(
                      controller: flateController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),

                    // Row(
                    //   children: [
                    //     CustomText(title: "Society Name", fontWeight: FontWeight.w400, color: Color(0xff7B8D9E), fontSize: 20),
                    //   ],
                    // ),
                    // TextFormField(
                    //   controller: societyController,
                    //   decoration: InputDecoration(
                    //      contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    //       filled: true,
                    //       fillColor: Colors.grey.shade200,
                    //       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    //       border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))
                    //   ),
                    // ),
                    Gap(20),
                  ],
                ),
              ),
            ),
            isSummited?Center(child: CircularProgressIndicator(),):CustomBottonPurple(
                title: "Update",
                onClick: () {
                  postInfo(
                      nameController.text.toString(),
                      mobileController.text.toString(),
                      flateController.text.toString());
                },
                height: 44),
            Gap(50)
          ],
        ),
      ),
    );
  }

  postInfo(name, mobile, flat) async {
    setState(() {
      isSummited=true;
    });
    Uri uri = Uri.parse(ApiNetwork.editInfo);
    Map<String, String> map = {
      'user_id': '1',
      'user_name': name,
      'mobile': mobile,
      'flat_number': flat
    };
    final response = await http.post(uri, body: map);

    if (response.statusCode == 200) {
      setState(() {
        isSummited=false;
      });
      EditInfoModel update = EditInfoModel.fromJson(jsonDecode(response.body));
      print(jsonDecode(response.body));
      if (update.message == "Update successfully") {
        setState(() {
          isSummited=false;
        });
        Navigator.pop(context);
      } else {
        setState(() {
          isSummited=false;
        });
        print("Error");
      }
    } else {
      setState(() {
        isSummited=false;
      });
      print("response error");
    }
  }
}
