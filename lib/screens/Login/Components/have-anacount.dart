

// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

import '../../../constants.dart';



class HaveanAcc extends StatelessWidget {

  final bool login;
  final VoidCallback  press;
  const HaveanAcc(
    {
    Key? key,
    this.login = true, 
    required this.press,
    }
    
  ): super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors
              Text(
                login?"Don't have an Account?":"Already Have an Account?",
                // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 14),),
              
              GestureDetector(
              
                onTap: press,
                // ignore: prefer_const_constructors
                child: Text(
                  login?"Sign Up":"Sign In",
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,
                color: kprimaryColor)))
            ],
          );
  }
}