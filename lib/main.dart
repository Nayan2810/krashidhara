import 'package:car_rent/Pages/homepage.dart';
import 'package:car_rent/utils/routs.dart';
import 'package:flutter/material.dart';
import 'package:car_rent/Pages/Login_page.dart';
import 'package:google_fonts/google_fonts.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // home: Homepage(),
      themeMode: ThemeMode.light ,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.sansita().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // initialRoute: "/Home",
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeRoute :(context) => HomePage(),
        MyRoutes.loginRoute :(context) => LoginPage()
      },
    );
  }
}
