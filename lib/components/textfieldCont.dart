// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:walid_flutter/constants.dart';


class TextFieldCont extends StatelessWidget {
  final Widget child;
  const TextFieldCont({
    Key? key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.symmetric(vertical: 15),
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      decoration: BoxDecoration(
      color: kprimarylightColor,  
      borderRadius: BorderRadius.circular(29)),
      width: size.width * 0.8,
      height: size.height * 0.06,
      child: child,
      );
  }
}
