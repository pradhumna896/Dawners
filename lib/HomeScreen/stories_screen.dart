import 'dart:async';
import 'dart:convert';

import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/model/show_stories_model.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/screens/helper/api_network.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class StoriesScreen extends StatefulWidget {
  const StoriesScreen({Key? key}) : super(key: key);

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  PageController pageController = PageController();

  List imagess = [
    "assets/image/storiesimage.png",
    "assets/image/Landing_page.png",
    "assets/image/storiesimage.png",
    "assets/image/Landing_page.png"
  ];

  List<ShowStoriesModel> showStoriesList = [];

  getStories() async {
    final response = await http.post(Uri.parse(ApiNetwork.showStories));
    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      showStoriesList = List<ShowStoriesModel>.from(
          jsonResponse.map((e) => ShowStoriesModel.fromJson(e)));
    }
  }

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
                showStoriesList.length,
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
          Expanded(child: FutureBuilder(
            future: getStories(),
            
            builder: (context, snapshot) {

              // Timer(Duration(seconds: 4), () {
              //   if(provider.storiesIndex+1==showStoriesList.length){
              //     Navigator.pop(context);
              //   }else{
              //     pageController.animateToPage(pageController.page!.toInt()+1, duration:Duration(seconds: 4) , curve: Curves.easeIn);
              //   }
              // });
              return PageView.builder(
                  controller: pageController,
                  onPageChanged: (index) {
                  provider.storiesStatus(index);
                  },
                  itemCount: showStoriesList.length,
                  itemBuilder: (BuildContext context, index) {
                    return Stack(
                        fit: StackFit.expand,
                        children: [
                      Image.network(showStoriesList[index].path!+showStoriesList[index].image!,fit: BoxFit.fill,),
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
                  });
            },
          )),
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
