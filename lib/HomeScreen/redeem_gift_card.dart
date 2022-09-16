import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_text.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/screens/gift_card_details.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RedeemGiftCard extends StatelessWidget {
  const RedeemGiftCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "REDEEM GIFT CARDS",
          style: KTextClass.AppBarStyle,
        ),
        centerTitle: true,
        leading: AppBarBackButton(
          onclick: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Gap(Dimentions.height20),
            Row(
              children: [
                CustomText(
                    title: "My Dawners Coins",
                    fontWeight: FontWeight.w800,
                    color: Color(0xff000000),
                    fontSize: 20),
                Spacer(),
                Image.asset(
                  "assets/icons/Dbigcircle.png",
                  height: 16,
                  width: 16,
                ),
                CustomText(
                    title: "230",
                    fontWeight: FontWeight.w600,
                    color: Color(0xff0000000),
                    fontSize: 16)
              ],
            ),
            Gap(10),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>GiftCardDetails()));
                  },
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/image/redeemcard.png",
                          height: 100,
                          width: 150,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gap(10),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      title: "Myntra E-Gift Card",
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff000000),
                                      fontSize: 18),
                                  CustomText(
                                      title: "250",
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff6739B7),
                                      fontSize: 14),
                                  CustomText(
                                      title: "1250 Points",
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff6739B7),
                                      fontSize: 14),
                                ],
                              ),
                            ),
                            Gap(20),
                            Divider(
                              color: Colors.black,
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
