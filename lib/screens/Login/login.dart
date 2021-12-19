import "package:flutter/material.dart";


// ignore: use_key_in_widget_constructors
class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors, unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // ignore: sized_box_for_whitespace
      body:Container(
        width: double.infinity,
        height: size.height,
        // ignore: prefer_const_constructors
        child: Stack(children: [
          Positioned(child: Image.asset(
            "assets/images/main_top.png",
            width: size.width * 0.4,),
            top:0,
            left: 0,
            ),

          Positioned(child: 
            Image.asset(
              "assets/images/login_bottom.png",
              width: size.width * 0.7,
              ),
              bottom: 0,
              right: 0,
          )

        ],),
        

      ),
    );
  }
}