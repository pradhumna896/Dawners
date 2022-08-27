import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_text_style.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EarnFreeWashes extends StatelessWidget {
  const EarnFreeWashes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Earn Free Coins",
          style: KTextClass.AppBarStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: AppBarBackButton(onclick: () {
          Navigator.pop(context);
        }),
      ),
      body: Center(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: Dimentions.width25),
          child: Column(
            children: [
              Gap(Dimentions.height20),
              Image.asset("assets/image/earncoins.png"),
              Gap(Dimentions.height10),
              Text(
                "GET 100 Coins",
                style: kFontSize15.copyWith(
                    color: Color(0xff6739B7), fontSize: Dimentions.font30),
              ),
              Gap(Dimentions.height10),
              Text(
                "For every user you refer",
                style: kFontSize15.copyWith(
                    color: Color(0xff000000), fontWeight: FontWeight.w600),
              ),
              Gap(Dimentions.height10),
              Text(
                "Use the coins to pay for premium services.🥳",
                textAlign: TextAlign.center,
                style: kFontSize15.copyWith(
                    fontWeight: FontWeight.w500, color: Color(0xff7B8D9E)),
              ),
              Gap(Dimentions.height10),
              Material(child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimentions.height20)
                  )
                ),
              ),),
              Gap(Dimentions.height10),
              Text(
                "GET 100 Coins",
                style: kFontSize15.copyWith(
                    color: Color(0xff6739B7), fontSize: Dimentions.font15),
              ),
              Gap(Dimentions.height10),
              Text("For any account you connect." ,style: kFontSize15.copyWith(
              color: Color(0xff000000), fontWeight: FontWeight.w600),),
              Gap(Dimentions.height20),
              CustomBottonPurple(title: "Earn", onClick: (){}, height: Dimentions.height56)


            ],
          ),
        ),
      ),
    );
  }
}
