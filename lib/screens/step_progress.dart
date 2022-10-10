import 'package:dawners/fragment/step_four_widget.dart';
import 'package:dawners/fragment/step_one_widget.dart';
import 'package:dawners/fragment/step_two_widget.dart';
import 'package:dawners/fragment/step_three_widget.dart';
import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/navigation_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dawners/fragment/step_two_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '../fragment/text_widget_one.dart';

class StepProgress extends StatefulWidget {
  const StepProgress({Key? key}) : super(key: key);

  @override
  State<StepProgress> createState() => _StepProgressState();
}

class _StepProgressState extends State<StepProgress> {
  Widget getStep(AppController data) {
    print(data.stepperProgress);
    if (data.stepperProgress == 1) {
      return StepOneWidget();
    } else if (data.stepperProgress == 2) {
      return StepTwoWidget();
    } else if (data.stepperProgress == 3) {
      return StepThreeWidget();
      //onclick: () { data.stepperProgressPage(3); },
    } else {
      return StepFourWidget();
    }
  }

  Widget getStepText(AppController data) {
    if (data.stepperProgress == 1) {
      return TextWidgetOne();
    } else if (data.stepperProgress == 2) {
      return TextWidgetTwo();
    } else if (data.stepperProgress == 3) {
      return TextWidgetThree();
    } else {
      return TextWidgetFour();
    }
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    return WillPopScope(
      onWillPop: () async {
        data.stepperProgress = 1;
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: AppBarBackButton(onclick: () {  if( data.stepperProgress>1){
            data.stepperProgressPage(data.stepperProgress-1);
          }else{
            Navigator.pop(context);
          } },),
          title: Text(
            data.stepTitle,
            style: KTextClass.AppBarStyle
            ,
          ),
        ),
        body: Column(
          children: [

            /*
            InkWell(
                onTap: (){
                data.stepperProgress++;
                },
                child: getStepText(data.stepperProgressPage())),
            */
           
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SvgPicture.asset(data.stepperProgress > 1
                        ? "assets/svg_icon/donecircle1.svg"
                        : "assets/svg/currentcircle1.svg"),
                    Text("1")
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/svg_icon/doneline1.svg"),
                    Container(
                      height: Dimentions.height14,
                      width: Dimentions.width7,
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(data.stepperProgress > 2
                        ? "assets/svg_icon/donecircle1.svg"
                        : data.stepperProgress > 1
                            ? "assets/svg/currentcircle1.svg"
                            : "assets/svg_icon/nextcircle1.svg"),
                    Text("2")
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(data.stepperProgress > 1
                        ? "assets/svg_icon/doneline1.svg"
                        : "assets/svg_icon/nextline1.svg"),
                    Container(
                      height: Dimentions.height14,
                      width: Dimentions.width7,
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(data.stepperProgress > 3
                        ? "assets/svg_icon/donecircle1.svg"
                        : data.stepperProgress > 2
                            ? "assets/svg/currentcircle1.svg"
                            : data.stepperProgress > 1
                                ? "assets/svg_icon/nextcircle1.svg"
                                : "assets/svg_icon/lastcircle1.svg"),
                    Text("3")
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/svg_icon/nextline1.svg"),
                    Container(
                      height: Dimentions.height14,
                      width: Dimentions.width7,
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(data.stepperProgress > 3
                        ? "assets/svg/currentcircle1.svg"
                        : "assets/svg_icon/lastcircle1.svg"),
                    Text("4")
                  ],
                )
              ],
            ),
            SizedBox(
              height: Dimentions.height20,
            ),
            Expanded(child: getStep(data)),
          ],
        ),
      ),
    );
  }
}
