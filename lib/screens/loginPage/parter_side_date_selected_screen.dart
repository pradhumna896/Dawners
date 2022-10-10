import 'package:dawners/fragment/step_three_widget.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/screens/loginPage/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PartnerSideDateSelectedScreen extends StatelessWidget {
  const PartnerSideDateSelectedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
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
          "Preferred Start Date",
          style: KTextClass.AppBarStyle,
        ),
      ),
      body: Column(
        children: [
          Expanded(child: StepThreeWidget())
        ],
      ),
    );
  }
}
