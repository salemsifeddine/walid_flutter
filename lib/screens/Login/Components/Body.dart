import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walid_flutter/components/roundedbutton.dart';
import 'package:walid_flutter/components/roundedinput.dart';
import 'package:walid_flutter/components/roundedpassword.dart';
import 'package:walid_flutter/constants.dart';
// import 'package:walid_flutter/components/textfieldCont.dart';
// import 'package:walid_flutter/constants.dart';

// import 'package:walid_flutter/constants.dart';
import 'package:walid_flutter/screens/Login/Components/background.dart';
import 'package:walid_flutter/screens/Login/Components/have-anacount.dart';
import 'package:walid_flutter/screens/Login/login.dart';
import 'package:walid_flutter/screens/Signin/sign.dart';

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
        // ignore: prefer_const_literals_to_create_immutables, duplicate_ignore
        children: [

          // ignore: prefer_const_constructors
          Text(
        "LOGIN",
        
        // ignore: prefer_const_constructors
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
        SizedBox(height: size.height*0.04,),
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
        HaveanAcc(press: (){
           Navigator.push(context, MaterialPageRoute(builder: (context){ return SignScreen();}));
        },login: true)
        ],
      )
    );
  }
}
