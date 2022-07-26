import 'package:dawners/provider/api_provider.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/screens/helper/sessionmanager.dart';
import 'package:dawners/screens/landing_page.dart';
import 'package:dawners/screens/welcome_screen_.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SessionManager.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft
    ]);
  }
  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>AppController()),
      ChangeNotifierProvider(create: (context)=>CardController()),
      ChangeNotifierProvider(create: (context)=>ApiProvider())

    ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: SessionManager.getisLoggedIn()?WelcomeScreen():LandingScreen(),
      ),
    );
  }
}
