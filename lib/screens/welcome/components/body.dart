
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walid_flutter/components/roundedbutton.dart';
// ignore: unused_import
import 'package:walid_flutter/constants.dart';
import 'package:walid_flutter/screens/welcome/components/background.dart';




// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;

    // ignore: prefer_const_constructors
    return Background(child: Column(
      mainAxisAlignment:MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        Text(
          "Welcome",
        // ignore: prefer_const_constructors
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
        ),
        SizedBox(height:size.height *0.052),
        SvgPicture.asset(
          "assets/icons/chat.svg",
          height: size.height * 0.4,
        ),
        // ignore: deprecated_member_use, duplicate_ignore
        SizedBox(height:size.height *0.052),
        RoundedButton(text: "LOGIN",press: (){},),
        RoundedButton(text: "SIGN IN",press: (){},color: kprimarylightColor,textColor: Colors.black,),
        
      ],
    ),);
  }
}