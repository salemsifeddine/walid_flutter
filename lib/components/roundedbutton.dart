// ignore: unused_import
// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, duplicate_ignore
import "package:flutter/material.dart";
import "package:walid_flutter/constants.dart";

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback  press;
  final Color color, textColor;
  const RoundedButton({
     Key? key,
    required this.text, 
    required this.press,
    this.color=kprimaryColor,
    this.textColor = Colors.white,
    
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        // ignore: deprecated_member_use
        child: FlatButton(
          color: color,
          // ignore: prefer_const_constructors
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 55),
          onPressed: press,
         child: Text(text,style: TextStyle(color: textColor,letterSpacing: 1.5),)),
      ),
    );
  }
}


