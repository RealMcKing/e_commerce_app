import 'package:e_commerce_app/colors.dart';
import 'package:e_commerce_app/page/detail_page/detail_page.dart';
import 'package:e_commerce_app/page/nav_page/main_page.dart';
import 'package:e_commerce_app/page/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: AppColors.mainColor, ),
        initialRoute: '/',

        home: const WelcomePage());
  }
}

//
// routes: {
// '/': (context) => MyApp(),
// '/welcomePage': (context) => WelcomePage(),
// '/mainNavPage': (context) => MainPage(),
// '/detailPage': (context) => DetailPage(),
// },