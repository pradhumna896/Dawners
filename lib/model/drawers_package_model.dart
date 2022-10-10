import 'package:dawners/drawerswidget/Drawers_my_idea.dart';
import 'package:dawners/drawerswidget/drawers_my_payment_mode.dart';
import 'package:dawners/drawerswidget/earn_free_washes.dart';
import 'package:dawners/drawerswidget/vehicles_care_taker.dart';
import 'package:dawners/rework/rework_screen.dart';
import 'package:dawners/screens/confirmfation_screen.dart';
import 'package:dawners/screens/loginPage/payment_page.dart';
import 'package:dawners/screens/rewordacreen/reward_screen.dart';
import 'package:dawners/screens/rewordacreen/set_up_payment_non_reward_found.dart';
import 'package:dawners/screens/set_up_payments.dart';
import 'package:dawners/subscribescreen/subscribe_screen.dart';
import 'package:flutter/material.dart';


class DrawersPackageModel {
  String? icon;
  String? title;
  Widget? page;

  DrawersPackageModel({
    this.icon,
    this.title,
    this.page,
  });


  static List<DrawersPackageModel> drawersPackageModel = [
    DrawersPackageModel(
      icon: "assets/drawersicons/Drawersprofile.svg",
      title: "My Profile",
      page: ConfirmMationScreen(),
    ),
    // DrawersPackageModel(
    //     icon: "assets/svg_icon/myreward.svg",
    //
    //     title: "My Reward",
    //     page: SetUpPaymentNonRewardFound()),
    DrawersPackageModel(
      icon: "assets/drawersicons/drawerssubscription.svg",
      title: "My Subscriptions",
      page: SubscribeScreen(),
    ),
    // DrawersPackageModel(
    //   icon: "assets/drawersicons/dpaymentmode.svg",
    //   title: "My Payment Mode",
    //   page: DrawersMyPaymentMode(),
    // ),
    // DrawersPackageModel(
    //   icon: "assets/drawersicons/drawersmyorder.svg",
    //   title: "My Orders",
    //   page: PaymentPage(),
    // ),
    // DrawersPackageModel(
    //   icon: "assets/drawersicons/drawerscarcaretakers.svg",
    //   title: "My Car Care Taker",
    //   page: VehiclesCareTaker(),
    // ),
    DrawersPackageModel(
      icon: "assets/drawersicons/drawersmyidea.svg",
      title: "My Ideas",
      page: DrawersMyIdea(),
    ),
    // DrawersPackageModel(
    //   icon: "assets/drawersicons/drawersmyreworkrequest.svg",
    //   title: "My Rework Requests",
    //   page: ReworkPage(),
    // ),
    DrawersPackageModel(
      icon: "assets/drawersicons/drawersshare.svg",
      title: "Earn Free Washes",
      page: EarnFreeWashes(),
    ),
  ];
}
