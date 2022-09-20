import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class StoriesScreen extends StatelessWidget {
  StoriesScreen({Key? key}) : super(key: key);
  PageController pageController = PageController();
  List imagess = [
    "assets/image/storiesimage.png",
    "assets/image/Landing_page.png",
    "assets/image/storiesimage.png",
    "assets/image/Landing_page.png"
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trending Stories",
          style: KTextClass.AppBarStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: AppBarBackButton(onclick: () {
          Navigator.pop(context);
        }),
      ),
      body: Column(
        children: [
          Row(
            children: List.generate(
                imagess.length,
                (index) => Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 5,
                        decoration: BoxDecoration(
                            color: provider.storiesIndex == index
                                ? Color(0xff6739B7)
                                : Color(0xffC2B0E2),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    )),
          ),
          Gap(10),
          Expanded(
              child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (index) {
                    provider.storiesStatus(index);
                  },
                  itemCount: 4,
                  itemBuilder: (BuildContext context, index) {
                    return Stack(children: [
                      Image.asset(imagess[index]),
                      Row(
                        children: [
                          Expanded(
                              child: InkWell(
                                  onTap: () {
                                    pageController.animateToPage(
                                        pageController.page!.toInt() - 1,
                                        duration: Duration(microseconds: 400),
                                        curve: Curves.easeIn);
                                  },
                                  child: Container())),
                          Expanded(
                              child: InkWell(
                                  onTap: () {
                                    pageController.animateToPage(
                                        pageController.page!.toInt() + 1,
                                        duration: Duration(microseconds: 400),
                                        curve: Curves.easeIn);
                                  },
                                  child: Container()))
                        ],
                      )
                    ]);
                  })),
          Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                CustomBottonPurple(title: "Share", onClick: () {}, height: 56),
          ),
          Gap(20)
        ],
      ),
    );
  }
}
