import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:walid_flutter/screens/welcome/welcome.dart';
import 'package:walid_flutter/constants.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter auth',
      theme: ThemeData(
      
        primaryColor: kprimaryColor,
        scaffoldBackgroundColor: Colors.white
        
      ),
      // ignore: prefer_const_constructors
      home:  Welcome(),
    );
  }
}
