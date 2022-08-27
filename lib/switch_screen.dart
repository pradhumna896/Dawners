import 'package:dawners/provider/card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';
class SwitchScreen extends StatelessWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataForSwitch =Provider.of<CardController>(context);
    return SizedBox(
      height: 29,
      width: 67,
      child: FlutterSwitch(
        activeText: "Hide",
        valueFontSize: 12,
        showOnOff: true,
        padding: 0.0,
        activeTextColor: Color(0xff6739B7),
        activeTextFontWeight: FontWeight.w400,

        inactiveText: "show",
        inactiveTextColor: Color(0xff6739B7),
        inactiveTextFontWeight: FontWeight.w400,
        inactiveColor: Color(0xffE1D7F1),
        activeColor:Color(0xffE1D7F1) ,
        toggleColor: Color(0xff6739B7),



        value: dataForSwitch.isSwitch,
        onToggle: (bool value) {
          dataForSwitch.isToggleSwitch(false);

        },),
    );
  }
}
