import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/screens/loginPage/login_confirm_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LoginWelcomeScreen extends StatelessWidget {
  const LoginWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/image/welcomescreenbg.png",
                ),
                fit: BoxFit.fitWidth)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
          child: Column(
            children: [
              Gap(10),
              Expanded(child: Image.asset("assets/image/welcomscreenfram.png")),
              Gap(30),
              CustomButton(text: "Great, Contiue!", onclick: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>LoginConfirmDetails()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
