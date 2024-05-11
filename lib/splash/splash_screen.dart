import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/auth/auth_screen.dart';
import 'package:untitled3/login/login_screen.dart';
import 'package:untitled3/mangers/color_manager.dart';

class SplashScreen extends StatelessWidget{
  static const String routeName ='splash';
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushNamed(LoginScreen.routeName);
    });
    return Scaffold(
      backgroundColor: ColorManager.mainPrimaryColor4,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/images/new_logo.png",
            // width: 800.w,
            fit: BoxFit.fill,
            )
          ),
        ],
      ),
    );
  }
}
