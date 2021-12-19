import 'package:flutter/material.dart';
import 'package:walid_flutter/components/textfieldCont.dart';
import 'package:walid_flutter/constants.dart';

class RoundedInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInput({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldCont(
      // ignore: prefer_const_constructors
      child: TextField(
        
        // ignore: prefer_const_constructors
        decoration:InputDecoration(
          // ignore: prefer_const_constructors
          icon:Icon(icon,color: kprimaryColor,),
          hintText: hintText,
          border: InputBorder.none
          )
      ),
    );
  }
}
