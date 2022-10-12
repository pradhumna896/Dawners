import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dawners/HomeScreen/custumer_home_screen.dart';
import 'package:dawners/helper/bottom_icon_icons.dart';
import 'package:dawners/helper/my_flutter_app_icons.dart';
import 'package:dawners/pages/myorder_screen.dart';

// import 'package:dawners/pages/update_screen.dart';

import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/rework/rework_screen.dart';
import 'package:dawners/screens/confirmfation_screen.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/login_confirm_details.dart';
import 'package:dawners/subscribescreen/subscribe_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CurveAppBar extends StatefulWidget {
  CurveAppBar({Key? key}) : super(key: key);

  @override
  State<CurveAppBar> createState() => _CurveAppBarState();
}

class _CurveAppBarState extends State<CurveAppBar> {
 final List _tabIteme= <Widget>[CustomerHomeScreen(),
   const ReworkPage(),
   SubscribeScreen(),
   const MyOrderScreen(),
   LoginConfirmDetails()
   // UpdateScreen()
 ];
 int _activePage=0;

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<CardController>(context);
    return Scaffold(
        extendBody: true,
        body: _tabIteme[_activePage],
        bottomNavigationBar: CurvedNavigationBar(
          height: Dimentions.height60,
          backgroundColor: Colors.transparent,
          onTap: (int index) {
            setState(() {
              _activePage=index;
            });
          },
          items: <Widget>[
            Icon(
              MyFlutterApp.group_7200,
              size: Dimentions.size30,color:_activePage==0?Color(0xffE6860B): Color(0xffBFBFBF),
            ),
            Icon(
              BottomIcon.group__4_,
              size: Dimentions.size30,color:_activePage==1?Color(0xffE6860B): Color(0xffBFBFBF),
            ),
            Icon(
              BottomIcon.group__5_,
              size: Dimentions.size30,color:_activePage==2?Color(0xffE6860B): Color(0xffBFBFBF),
            ),
            Icon(
              BottomIcon.group__6_,
              size: Dimentions.size30,color:_activePage==3?Color(0xffE6860B): Color(0xffBFBFBF),
            ),
            Icon(
              BottomIcon.group__7_,
              size: Dimentions.size30,color:_activePage==4?Color(0xffE6860B): Color(0xffBFBFBF),
            )
          ],
        ));
  }
}

// class MyFlutterApp {
//   MyFlutterApp._();
//
//   static const _kFontFam = 'MyFlutterApp';
//   static const String? _kFontPkg = null;
//
//   static const IconData group_7200 = IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
// }
