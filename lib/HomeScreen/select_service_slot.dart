import 'package:dawners/HomeScreen/add_on_service_page.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectServiceSlot extends StatefulWidget {
  String typeOfService;
  String vehicleNumber;

  SelectServiceSlot(
      {Key? key, required this.typeOfService, required this.vehicleNumber})
      : super(key: key);

  @override
  State<SelectServiceSlot> createState() => _SelectServiceSlotState();
}

class _SelectServiceSlotState extends State<SelectServiceSlot> {
  DateTime _chosenDate = DateTime.now();
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    String typeOfService = widget.typeOfService;
    String vehicleNumber = widget.vehicleNumber;
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
        title: Text("Preferrable Slot", style: KTextClass.AppBarStyle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  SvgPicture.asset("assets/svg_icon/Component39.svg"),
                  Gap(10),
                  Flexible(
                    child: Text(
                      "For Interiors Request Please Select From Green Marked Boxes Only.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            TableCalendar(
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
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Color(0xff6739B7),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      topLeft: Radius.circular(32))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 29, top: 39),
                    child: Row(
                      children: const [
                        Text(
                          "Time",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 24,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: List.generate(
                        6,
                        (index) => InkWell(
                              onTap: () {
                                setState(() {
                                  selectIndex = index;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border:
                                        Border.all(color: Color(0xffBECADA)),
                                    color: selectIndex == index
                                        ? Color(0xffE09F1F)
                                        : Colors.transparent),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 17, vertical: 13),
                                  child: Text(
                                    "9:00AM",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "NunitoSans",
                                        color: Color(0xffFFFFFF)),
                                  ),
                                ),
                              ),
                            )),
                  ),
                  SizedBox(
                    height: Dimentions.height30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Material(
                        borderRadius: BorderRadius.circular(14),
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => AddOnServicePage(
                                          dateTime: "10-10-22",
                                          time: "9:30AM",
                                          typeOfService: typeOfService,
                                          vehicleNumber: vehicleNumber,
                                        )));
                          },
                          child: Container(
                            height: 56,
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
                            child: Center(
                                child: Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Montserrat-ExtraBold",
                                  color: Color(0xff6739B7)),
                            )),
                          ),
                        )),
                  ),
                  Gap(Dimentions.height10)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
