
import 'package:demo_project/pages/loginpage/loginpage.dart';
import 'package:demo_project/utils/constant.dart';
import 'package:flutter/material.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,

      title: 'Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor:  Color(0xFF297ca8),
              iconTheme: IconThemeData(color: Colors.white),
              centerTitle: true,
              elevation: 15,
              titleTextStyle: TextStyle(color: Colors.white,fontSize: 16)),
        primaryColor: primayColor, textSelectionTheme: TextSelectionThemeData(cursorColor: primayColor),
      ),
      home: LoginPage(),
    );
  }
}

