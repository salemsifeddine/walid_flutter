// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:walid_flutter/components/roundedbutton.dart';
import 'package:walid_flutter/components/roundedinput.dart';
import 'package:walid_flutter/components/roundedpassword.dart';
import 'package:walid_flutter/screens/Login/Components/background.dart';
import 'package:walid_flutter/screens/Login/login.dart';

import '../../../constants.dart';







class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

 

@override
Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    
   
    return Backgroud(
   
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [

          
          Text(
        "LOGIN",
        
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
        SvgPicture.asset(
          "assets/icons/login.svg",
          width: size.width * 0.8,
          height: size.height * 0.35,
          ),
         
          RoundedInput(
            hintText: "Enter Your Email",
            icon: Icons.person,
            // ignore: avoid_print
            onChanged: (value){print(value);}
          ),
          
           RoundedPassword(
            onChanged: (value){
              // ignore: avoid_print
              print("salem");
            },),
            RoundedButton(text: "LOGIN",press: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return LoginScreen();
            }),);
          },color: kprimaryColor,textColor: Colors.white,),
        
        ],
      )
    );
  }
}
