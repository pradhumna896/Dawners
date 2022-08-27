import 'package:dawners/feedbackScreens/buttonwidget/button_four.dart';
import 'package:dawners/feedbackScreens/buttonwidget/button_one.dart';
import 'package:dawners/feedbackScreens/buttonwidget/button_three.dart';
import 'package:dawners/feedbackScreens/buttonwidget/button_two.dart';
import 'package:dawners/feedbackScreens/review_four_widget.dart';
import 'package:dawners/feedbackScreens/review_one_widget.dart';
import 'package:dawners/feedbackScreens/review_slider_one.dart';

import 'package:dawners/feedbackScreens/review_three_widget.dart';
import 'package:dawners/feedbackScreens/review_two_widget.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/provider/card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class ServiceDetailsOne extends StatefulWidget {
  const ServiceDetailsOne({Key? key}) : super(key: key);

  @override
  State<ServiceDetailsOne> createState() => _ServiceDetailsOneState();
}

class _ServiceDetailsOneState extends State<ServiceDetailsOne> {
  Widget getReviewPage(CardController data) {
    print(data.reviewDetailOne);
    if (data.reviewDetailOne == 0) {
      return ReviewOneWidget();
    } else if (data.reviewDetailOne == 1) {
      return ReviewTwoWidget();
    }
    if (data.reviewDetailOne == 2) {
      return ReviewThreeWidget();
    } else if (data.reviewDetailOne == 3) {
      return ReviewFourWidget();
    } else {
      return Container();
    }
  }
  Widget getButton(CardController data){
    if (data.reviewDetailOne == 0) {
      return ButtonOne();
    } else if (data.reviewDetailOne == 1) {
      return ButtonTwo();
    }
    if (data.reviewDetailOne == 2) {
      return ButtonThree();
    } else if (data.reviewDetailOne == 3) {
      return ButtonFour();
    } else {
      return Container();
    }

  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<CardController>(context);
    return WillPopScope(
      onWillPop: () async{ Navigator.pop(context);
        data.reviewDetailOne=0;
        return true;
        },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              data.reviewDetailOne=0;
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD7DEEA), width: 1),
                      borderRadius: BorderRadius.circular(16)),
                  child: Center(
                      child: SvgPicture.asset(
                    "assets/image/backarrow.svg",
                    color: Color(0xff7B8D9E),
                  )),
                ),
              ),
            ),
          ),
          title: Text(
            "Valuable Inputs",
            style: TextStyle(
                color: Color(0xff0E1012),
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat-Bold"),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(20),
                  Text(
                    "We Study Your Inputs,",
                    style: TextStyle(
                        color: Color(0xff0E1012),
                        fontSize: 24,
                        fontFamily: "Montserrat-Regular",
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "For Your Best Experience!",
                    style: TextStyle(
                        color: Color(0xff0E1012),
                        fontSize: 24,
                        fontFamily: "Montserrat-Bold",
                        fontWeight: FontWeight.w700),
                  ),
                  Gap(20),
                ],
              ),
            ),
            getReviewPage(data),
            Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    children: [
                      Gap(10),
                      ReviewOneDotSlider(),
                      Gap(20),
                      getButton(data)


                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
