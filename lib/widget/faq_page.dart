
import 'package:dawners/provider/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class FAQPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FAQPageState();
  }
}

class FAQPageState extends State<FAQPage> {
  bool isExpand = false;
  var selected;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isExpand = false;
  }

  @override
  Widget build(BuildContext context) {
    final provider =Provider.of<ApiProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height*0.6,
      child: FutureBuilder(
        future: provider.getFaqData(),
        builder: (context , snapshot){
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              itemCount: provider.faqList.length,
              padding: EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return Column(children: <Widget>[
                  Container(

                    child: ExpansionTile(
                        key: Key(index.toString()),
                        backgroundColor: Color(0xfff6f7f9),
                        initiallyExpanded: index == selected,
                        iconColor: Colors.grey,
                        title: Text(
                          provider.faqList[index].question!,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Montserrat",
                              color: Color(0xff000000)),
                        ),
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(
                                   bottom: 10, left: 17, right: 17),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      provider.faqList[index].answer!,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Montserrat",
                                          color: Color(0xff000000)),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ))
                        ],
                        onExpansionChanged: ((newState) {
                          isExpand = newState;
                          print(newState);
                          if (newState)
                            setState(() {
                              Duration(seconds: 20000);
                              selected = index;
                              // isExpand=newState;
                            });
                          else
                            setState(() {
                              selected = -1;
                              // isExpand=newState;
                            });
                          print(selected);
                        })),
                  ),
                ]);
              });
        },),
    );

  }
}