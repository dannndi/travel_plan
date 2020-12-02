import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:travel_plan/core/providers/travel_place_provider.dart';
import 'package:travel_plan/ui/pages/login_page.dart';
import 'package:travel_plan/ui/pages/main_page.dart';
import 'package:travel_plan/ui/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // change status bar color
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TravelPlaceProv()),
      ],
      child: MaterialApp(
        title: 'Travel Plan',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashPage(),
        routes: {
          '/login_page': (context) => LoginPage(),
          '/main_page': (context) => MainPage(),
        },
      ),
    );
  }
}
