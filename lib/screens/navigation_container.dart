// import 'package:dawners/pages/Home_screen.dart';
// import 'package:dawners/pages/rework_screen.dart';
//
// import 'package:dawners/pages/myorder_screen.dart';
// import 'package:dawners/pages/package_page_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:dawners/screens/custom_bottom_nav_bar.dart';
// class NavigationContainer extends StatefulWidget {
//   NavigationContainer({Key? key,  }) : super(key: key);
//
//   @override
//   State<NavigationContainer> createState() => _NavigationContainerState();
// }
//
// class _NavigationContainerState extends State<NavigationContainer> {
//   int _selectIndexPage =0;
//
//
//   static const List<Widget> _appwidget=[
//     HomeScreen(),
//     ReworkScreen(),
//
//     MyOrderScreen(),
//     UpdateScreen(),
//   ];
//   void _onIconTapped(int index){
//     setState(() {
//       _selectIndexPage = index;
//
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           child:_appwidget[_selectIndexPage]
//       ),
//       bottomNavigationBar:CustomBottomNavBar(
//
//         selectedPageIndex: _selectIndexPage,onIconTap: _onIconTapped,
//
//       ),
//     );
//   }
// }
