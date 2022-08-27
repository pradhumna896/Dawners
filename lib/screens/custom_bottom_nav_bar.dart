import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar(
      {Key? key, required this.selectedPageIndex, required this.onIconTap})
      : super(key: key);
  final int selectedPageIndex;
  final Function onIconTap;
  final double _iconsize = 30;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              IconButton(
                  iconSize: _iconsize,
                  onPressed: () {
                    onIconTap(0);
                  },
                  icon: Image.asset(
                    "assets/icons/homenav.png",
                    color: selectedPageIndex == 0
                        ? Color(0xffFE8E00)
                        : Color(0xffBFBFBF),
                  )),
              Text(
                "Home",
                style: TextStyle(
                    color: selectedPageIndex == 0
                        ? Color(0xffFE8E00)
                        : Color(0xffBFBFBF),
                    fontSize: 12,
                    fontFamily: "Inter-Regular"),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    onIconTap(1);
                  },
                  icon: Image.asset("assets/icons/reworkicon.png",
                      color: selectedPageIndex == 1
                          ? Color(0xffFE8E00)
                          : Color(0xffBFBFBF))),
              Text(
                "Rework",
                style: TextStyle(
                    color: selectedPageIndex == 1
                        ? Color(0xffFE8E00)
                        : Color(0xffBFBFBF),
                    fontSize: 12,
                    fontFamily: "Inter-Regular"),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    onIconTap(2);
                  },
                  icon: Image.asset("assets/icons/subscripyionicon.png",
                      color: selectedPageIndex == 2
                          ? Color(0xffFE8E00)
                          : Color(0xffBFBFBF))),
              Text(
                "Subscription",
                style: TextStyle(
                    color: selectedPageIndex == 2
                        ? Color(0xffFE8E00)
                        : Color(0xffBFBFBF),
                    fontSize: 12,
                    fontFamily: "Inter-Regular"),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    onIconTap(3);
                  },
                  icon: Image.asset("assets/icons/myordericon.png",
                      color: selectedPageIndex == 3
                          ? Color(0xffFE8E00)
                          : Color(0xffBFBFBF))),
              Text(
                "My Order",
                style: TextStyle(
                    color: selectedPageIndex == 3
                        ? Color(0xffFE8E00)
                        : Color(0xffBFBFBF),
                    fontSize: 12,
                    fontFamily: "Inter-Regular"),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    onIconTap(4);
                  },
                  icon: Image.asset("assets/icons/profileicon.png",
                      color: selectedPageIndex == 4
                          ? Color(0xffFE8E00)
                          : Color(0xffBFBFBF))),
              Flexible(
                  child: Text(
                "Update\nPackage",
                style: TextStyle(
                    color: selectedPageIndex == 4
                        ? Color(0xffFE8E00)
                        : Color(0xffBFBFBF),
                    fontSize: 12,
                    fontFamily: "Inter-Regular"),
              ))
            ],
          )
        ],
      ),
    );
  }
}
