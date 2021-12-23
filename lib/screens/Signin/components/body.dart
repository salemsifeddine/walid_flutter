// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:walid_flutter/components/roundedbutton.dart';
import 'package:walid_flutter/components/roundedinput.dart';
import 'package:walid_flutter/components/roundedpassword.dart';
import 'package:walid_flutter/screens/Login/Components/background.dart';
import 'package:walid_flutter/screens/Login/Components/have-anacount.dart';
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
        "Sign Up",
        
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
        SizedBox(height: size.height*0.04,),
        SvgPicture.asset(
          "assets/icons/signup.svg",
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
        HaveanAcc(press: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){ return LoginScreen();}));
        },login: false),
         Ordevider(),
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(),
                  shape:BoxShape.circle,
                  ),
                  child: SvgPicture.asset("assets/icons/facebook.svg",height: 20,width: 20,),
                  ),
            ],
          )
        ],
       
      )
    );
  }
}



class Ordevider extends StatelessWidget {
 


  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.8,
      child: Row(
        
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          BuildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text("OR",style: TextStyle(fontWeight: FontWeight.w600),),
          ),
          BuildDivider(),
          

        ],
        
      ),
    );
  }

  Expanded BuildDivider() {
    return Expanded(child: Divider(
          color: Color(0xFFD9D9D9),
          height: 2.5,
        ),);
  }
}
