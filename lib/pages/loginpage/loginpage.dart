
import 'package:demo_project/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../sidebar/sidebar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.60,
                  decoration: BoxDecoration(
                    color: primayColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(130, 100, 10, 10),
                  child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.fitWidth,
                    width: 150,
                    height: 150,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'assets/loginvectorimage3.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  top: 250,
                  left: 30,
                  right: 30,
                  child: Column(
                    children: [
                      Container(
                        height: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: whiteColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Welcome to App Name",
                                style: font20.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: greyColor),
                              ),
                              Text(
                                "“It's time to start living the life we've imagined.”",
                                style: font14.copyWith(
                                    color: lightblue,
                                    fontStyle: FontStyle.italic),
                                textAlign: TextAlign.center,
                              ),
                              TextField(
                                style: font14,
                                cursorColor: primayColor,
                                cursorHeight: 20,
                                decoration: InputDecoration(
                                  hintText: "User name",
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 3.0, 3, 3),
                                  hintStyle:
                                      font14.copyWith(color: Color(0xffaaaaaa)),
                                  prefixIcon:
                                      Icon(Icons.email, color: lightblue),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1, color: primayColor),
                                  ),
                                ),
                              ),
                              TextField(
                                style: font14,
                                cursorColor: primayColor,
                                cursorHeight: 20,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 3.0, 3, 3),
                                  hintStyle:
                                      font14.copyWith(color: Color(0xffaaaaaa)),
                                  prefixIcon:
                                      Icon(Icons.lock, color: lightblue),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1, color: primayColor),
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Forgot password?",
                                    style: font14.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: primayColor),
                                  )),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          child: MyHomePage()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: primayColor,
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(50, 10, 50, 10),
                                    child: Text(
                                      "Sign In",
                                      style: font16.copyWith(
                                          color: whiteColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
