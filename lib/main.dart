import 'package:car_rent/Pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:car_rent/Pages/Login_page.dart';

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
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // initialRoute: "/Home",
      routes: {
        "/":(context) => LoginPage(),
        "/Home":(context) => HomePage(),
        "/login":(context) => LoginPage()
      },
    );
  }
}
