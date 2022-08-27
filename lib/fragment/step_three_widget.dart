import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class StepThreeWidget extends StatefulWidget {
   StepThreeWidget({Key? key}) : super(key: key);

  @override
  State<StepThreeWidget> createState() => _StepThreeWidgetState();
}

class _StepThreeWidgetState extends State<StepThreeWidget> {
  int selectIndex = -1;

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: TableCalendar(
            calendarFormat: CalendarFormat.month,
            daysOfWeekVisible: true,
            headerStyle: HeaderStyle(


              titleCentered: true,
              formatButtonVisible: false,

              titleTextStyle: TextStyle(
                color: Color(0xff0E1012),fontSize: 20,fontFamily: "Montserrat-ExtraBold",fontWeight: FontWeight.bold
              )

            ),
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(color: Color(0xff6739B7),
              borderRadius: BorderRadius.circular(10))
            ),
          ),
        ),
        Container(
   
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: Color(0xff6739B7),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32), topLeft: Radius.circular(32))),
          child: Column(
            children: [
              Gap(Dimentions.height30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width25),
                child: Row(
                  children: [
                    Text(
                      "Time",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: Dimentions.font24,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
              ),
              SizedBox(height: Dimentions.height20,),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(6,
                        (index) => InkWell(
                          onTap: (){
                            setState(() {
                              selectIndex=index;

                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xffBECADA)),
                              color: selectIndex==index?Color(0xffE09F1F):Colors.transparent
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 13),
                              child: Text("9:00AM",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,
                              fontFamily: "NunitoSans",
                                color: Color(0xffFFFFFF)
                              ),),
                            ),
                          ),
                        )


                ),
              ),
              SizedBox(height: Dimentions.height20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width25),
                child: Material(
                    borderRadius: BorderRadius.circular(14),
                    elevation: 5,
                    child: InkWell(
                      onTap: (){
                        data.stepperProgressPage(4);
                      },
                      child: Container(
                        height: Dimentions.height56,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomLeft,
                              // stops: [0.3,0.6,0.9],
                              colors: [
                                Color(0xffC1C1C1),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                Color(0xffC1C1C1),
                              ]),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Center(child: Text("Continue",style: TextStyle(
                            fontSize: Dimentions.font24,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Montserrat",
                            color: Color(0xff6739B7)),)),
                      ),
                    )),
              ),
              Gap(Dimentions.height10)
            ],
          ),
        )
      ],
    );
  }
}
