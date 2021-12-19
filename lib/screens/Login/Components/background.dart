import 'package:flutter/material.dart';


class Backgroud extends StatelessWidget {
  final Widget child;
  const Backgroud({
    Key? key,
    required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
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
        ),
        child
      ],),
      

    );
  }
}