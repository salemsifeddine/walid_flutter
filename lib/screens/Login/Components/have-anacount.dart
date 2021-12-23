

// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

import '../../../constants.dart';



class HaveanAcc extends StatelessWidget {

  final bool login;
  final Function log;
  const HaveanAcc(
    {
    required Key key,
    required this.login, 
    required this.log,}
    
  ): super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors
              Text(
                "Don't have an Account?",
                // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 14),),
              
              GestureDetector(
                // ignore: avoid_print
                onTap: (){print("salemsss");},
                // ignore: prefer_const_constructors
                child: Text(
                  "Sign Up",
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,
                color: kprimaryColor)))
            ],
          );
  }
}