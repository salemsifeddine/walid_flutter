import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:walid_flutter/components/roundedinput.dart';

import 'package:walid_flutter/constants.dart';
import 'package:walid_flutter/screens/Login/Components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

 

@override
Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    
    // ignore: sized_box_for_whitespace, prefer_const_constructors
    return Backgroud(
      // ignore: prefer_const_constructors
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          Text(
        "LOGIN",
        // ignore: prefer_const_constructors
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
        SvgPicture.asset(
          "assets/icons/login.svg",
          width: size.width * 0.8,
          height: size.height * 0.35,
          ),
          // ignore: prefer_const_constructors
          RoundedInput(
            hintText: "salem",
            icon: Icons.person,
            // ignore: avoid_print
            onChanged: (value){print(value);}
          )
        
        ],
      )
    );
  }
}
