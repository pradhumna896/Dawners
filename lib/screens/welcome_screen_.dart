import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/step_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
          padding: EdgeInsets.symmetric(horizontal: Dimentions.width25,vertical: Dimentions.height25),
          child: Column(
            children: [
              Expanded(child: Image.asset("assets/image/welcomscreenfram.png",)),
              Gap(Dimentions.height30),
              CustomButton(text: "Great, Contiue!", onclick: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>StepProgress()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
