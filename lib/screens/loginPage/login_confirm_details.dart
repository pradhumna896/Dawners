import 'package:dawners/screens/loginPage/loginHelper/profile_detail.dart';
import 'package:dawners/screens/loginPage/vehiclae_Packages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LoginConfirmDetails extends StatelessWidget {
  const LoginConfirmDetails({Key? key}) : super(key: key);

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Color(0xff6739B7),width: 2)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(20),
                profileDetail(
                  title: 'Full Name',
                  icon: 'assets/svg_icon/fluent_person-16-filled.svg',
                  subtitle: 'Gaurav Shekhawat',
                ),
                Gap(20),
                profileDetail(
                    icon: "assets/svg_icon/mobile_icon.svg",
                    subtitle: "9067610118",
                    title: "Mobile Number"),
                Gap(20),
                profileDetail(
                    icon:
                        "assets/svg_icon/fluent_home-person-20-filled.svg",
                    subtitle: "C-1402",
                    title: "Flate Number"),
                Gap(20),
                profileDetail(
                    icon: "assets/svg/Societyname.svg",
                    subtitle: "SANGRIA,MEGAPOLIS,\nHINJEWADI -PHASE 3.",
                    title: "Society Name")
              ],
            ),
          ),
            ),
          ),

          Expanded(
              child: Container(
            child: Column(
              children: [
                Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Color(0xff6739B7),width: 2)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 29,vertical: 7),
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
                    Gap(30),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>VehiclePackage()));
                      },
                      child: Container(
                        decoration:BoxDecoration(
    color: Color(0xff6739B7),
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: Color(0xff6739B7),width: 2)

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 29,vertical: 7),
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
