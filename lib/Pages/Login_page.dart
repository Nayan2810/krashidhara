// ignore_for_file: dead_code
// import 'package:flutter/animation.dart';
import 'package:car_rent/utils/routs.dart';
import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';
// import 'assets/images/LOGO1.png';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    String name = "";
    bool changeButton = false;

    // var fontFamily;
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
           children: [
            Image.asset("assets/images/logo.png",
              fit: BoxFit.cover,
              height: 250,
              width: 200,
            ),
             // const SizedBox(
             //   height: ,
             // ),
              const Text('LoginIn',style: TextStyle(
               fontSize: 30,
               fontWeight: FontWeight.bold,
                 // fontFamily: Arial(),
             ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20 , 205, 0),
                child: Column(
                 children: [ Text("Hello... $name ",style: const TextStyle(
                   color: Colors.grey,
                 ),),



                 ]),
              ),
                const SizedBox(
               height: 5,
             ),

             Padding(
               padding:
               const EdgeInsets.symmetric(vertical: 26.0,horizontal: 25),
               child: Column(
                 children:[
                 TextFormField(
                   decoration: const InputDecoration(

                     hintText: "Enter Username",
                     labelText:"Email/Username",
                   ),

                 ),
                 TextFormField(
                   obscureText: true,
                   decoration: const InputDecoration(
                     hintText: "Enter Password",
                     labelText:"Password",
                   ),
                 ),
                   const SizedBox(
                     height: 25,
                   ),


                   InkWell(
                     onTap: () async {
                       setState(() {
                         changeButton = true;
                       }
                       );
                       await Future.delayed(Duration(seconds: 1));
                       Navigator.pushNamed(context, MyRoutes.homeRoute);
                     },
                     child: AnimatedContainer(
                       duration:   const Duration(seconds: 1),
                     width: changeButton? 10 : 210,
                     height: 50,
                     color: Colors.green,
                     alignment: Alignment.center,
                     // ignore: prefer_const_constructors
                     decoration: BoxDecoration(
                       // shape: changeButton?BoxShape.circle:BoxShape.rectangle ,

                       borderRadius: BorderRadius.circular(changeButton ? 50 : 8 ),
                           color: Colors.green,

                     ),
                      child:   changeButton
                          ?Icon(Icons.done,
                      color: Colors.white,):
                       Text('Login',
                       style: TextStyle(color: Colors.white ,
                       fontWeight: FontWeight.bold,
                       fontSize: 18, ),
                     ),
                   ),
                   ),


                   // ElevatedButton(
                   //     onPressed: () {
                   //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                   //     },
                   //     child: const Text('Login'),
                   //   style: TextButton.styleFrom(
                   //     minimumSize: Size(180,45),
                   //   ),
                   //
                   //   ),


                 ]
               ),
             ),
          ],
        ),
      ));
  }
}
