import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/mangers/color_manager.dart';

import '../Screens/home_screen.dart';
import '../Widgets/register_widget.dart';
import '../mangers/styles_manager.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Welcom back",
              style: getBoldBlack24Style().copyWith(color: ColorManager.mainPrimaryColor4),
              ),
            ),
            SizedBox(height: 40.h,),
            RegisterWidget(
                text: "Email",
                textFormText: "Enter Your Email",

            ),
            SizedBox(height: 15.h,),
            RegisterWidget(text: "Password", textFormText: "Enter Your Password"),
            SizedBox(height: 40.h,),
            Container(
              height: 50.h,
              width: 365.w,
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(backgroundColor: ColorManager.mainPrimaryColor4),
                  onPressed: (){
                    Navigator.of(context).pushNamed(HomeScreen.routeName);
                  },
                  child: Text("Next",
                  style: getBoldWhite18Style(),
                  )),
            )

          ],
        ),
      ),
    );
  }
}
