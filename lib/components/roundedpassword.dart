import 'package:flutter/material.dart';
import 'package:walid_flutter/components/textfieldCont.dart';
import 'package:walid_flutter/constants.dart';

class RoundedPassword extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPassword({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: duplicate_ignore
    // ignore: prefer_const_constructors
    return TextFieldCont(child: TextField(
      onChanged: onChanged,
      obscureText: true,
      
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
       border: InputBorder.none,
       // ignore: prefer_const_constructors
       icon:Icon(Icons.lock, color: kprimaryColor,),
       // ignore: prefer_const_constructors
       suffixIcon: Icon(Icons.visibility,color: kprimaryColor,),
       hintText: "Enter Your Password",
       
      ),
     
    ),);
  }
}
