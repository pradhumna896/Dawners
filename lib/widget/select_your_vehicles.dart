import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class SelectYourVehicles extends StatelessWidget {
  const SelectYourVehicles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimentions.height115,
      child: Row(
        children: [
          Flexible(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: Dimentions.width17),
                      child: index == 3
                          ? Container(
                        width: Dimentions.width66,
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Container(
                              height: Dimentions.height66,
                              width: Dimentions.width66,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff6739B7)),
                                  borderRadius:
                                  BorderRadius.circular(Dimentions.height66)),
                              child: SvgPicture.asset("assets/svg_icon/Group 2318.svg",fit: BoxFit.fill,height: 66,width: 66,),
                            ),
                            SizedBox(
                              height: Dimentions.height10,
                            ),
                            Text(
                              "Add\nMore",
                              textAlign: TextAlign.center,

                              style: TextStyle(
                                  color: Color(0xff6739B7),
                                  fontSize: Dimentions.font12,
                                  fontFamily:
                                  "Montserrat"),
                            )
                          ],
                        ),
                      )
                          : Container(
                        width: Dimentions.width71,
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Container(
                              height: Dimentions.height80,
                              child: Stack(children: [
                                Positioned(
                                  top: Dimentions.height5,
                                  right: Dimentions.width5,
                                  child: Container(
                                    height: Dimentions.height66,
                                    width: Dimentions.width66,
                                    decoration: BoxDecoration(
                                        border: index == 0
                                            ? Border.all(
                                            color: Color(
                                                0xff6739B7))
                                            : Border(),
                                        color: Color(0xffF0EBF8),
                                        borderRadius:
                                        BorderRadius.circular(
                                            Dimentions.height77)),
                                    child: Center(
                                      child: Image.asset(
                                        "assets/icons/popupcirclecarimage.png",
                                        height: Dimentions.height39,
                                        width: Dimentions.width62,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Visibility(
                                    visible:
                                    index == 0 ? true : false,
                                    child: Image.asset(
                                      "assets/icons/platinumpremium.png",
                                      height: Dimentions.height30,
                                      width: Dimentions.width30,
                                    ),
                                  ),
                                )
                              ]),
                            ),
                            SizedBox(
                              height: Dimentions.height5,
                            ),
                            Text("MH-14-KC 2932",
                              textAlign: TextAlign.center,

                              style: TextStyle(
                                  color: Color(0xff6739B7),
                                  fontSize: Dimentions.font12,
                                  fontFamily:
                                  "Montserrat"),
                            )
                          ],
                        ),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}