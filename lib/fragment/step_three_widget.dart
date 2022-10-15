import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class StepThreeWidget extends StatefulWidget {




   StepThreeWidget({Key? key, }) : super(key: key);

  @override
  State<StepThreeWidget> createState() => _StepThreeWidgetState();

}

class _StepThreeWidgetState extends State<StepThreeWidget> {

  List times = ["09:00 AM","11:00AM","12:00PM","01:00PM","03:00PM","05:00PM"];

  DateTime _chosenDate = DateTime.now();
  int selectIndex = 0;
   String time="09:00AM";
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: TableCalendar(
              onDaySelected: (
                  date,
                  events,
                  ) {
                setState(() {
                  _chosenDate = date;
                  print(_chosenDate);
                });
              },
              calendarFormat: CalendarFormat.month,
              daysOfWeekVisible: true,
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                    color: Color(0xff0E1012),
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Montserrat"),
                weekendStyle: TextStyle(
                    color: Color(0xff0E1012),
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Montserrat"),
              ),
              headerStyle: HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false,
                  titleTextStyle: TextStyle(
                      color: Color(0xff0E1012),
                      fontSize: Dimentions.font20,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w800)),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              currentDay: _chosenDate,
              focusedDay: DateTime.now(),
              calendarStyle: CalendarStyle(
                  cellMargin: EdgeInsets.all(8),
                  markerMargin: EdgeInsets.symmetric(horizontal: 0),
                  weekendDecoration: const BoxDecoration(
                    // color: Color(0xff6ACA69),

                  ),
                  holidayDecoration:
                  const BoxDecoration(color: Color(0xff07A605)),
                  selectedTextStyle: const TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 15,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500),
                  selectedDecoration: BoxDecoration(
                      color: const Color(0xff07A605),
                      borderRadius: BorderRadius.circular(14)),
                  todayDecoration: BoxDecoration(
                    color: Color(0xff6ACA69),
                  )),
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
                children: List.generate(times.length,
                        (index) => InkWell(
                          onTap: (){
                            setState(() {
                              selectIndex=index;
                              time = times[index];

                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: const Color(0xffBECADA)),
                              color: selectIndex==index?const Color(0xffE09F1F):Colors.transparent
                            ),
                            child:  Padding(
                              padding: EdgeInsets.symmetric(horizontal: 17,vertical: 13),
                              child: Text(times[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,
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
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>PaymentPage(time: time,date:_chosenDate ,)));
                      },
                      child: Container(
                        height: Dimentions.height56,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
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
                            color: const Color(0xff6739B7)),)),
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
