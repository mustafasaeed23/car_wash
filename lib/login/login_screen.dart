import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/auth/auth_screen.dart';
import 'package:untitled3/mangers/color_manager.dart';
import 'package:untitled3/utills.dart';

import '../Screens/home_screen.dart';
import '../Widgets/register_widget.dart';
import '../mangers/styles_manager.dart';


class LoginScreen extends StatefulWidget {
  static const String routeName = 'login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email ='AhmedAli99@mail.com';

  String password = '';

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text("Welcom back",
                style: getBoldBlack24Style().copyWith(color: ColorManager.mainPrimaryColor4),
                ),
              ),
              SizedBox(height: 40.h,),
              Text("Email",
              style: getBoldBlack17Style(),
              ),
              SizedBox(height: 10.h,),
              Container(
                width: 327.w,
                height: 65.h,
                decoration: BoxDecoration(
                  color: ColorManager.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(color: ColorManager.greyColor,width: 2),
                ),
                child: Center(
                  child: TextFormField(
                    validator: (text){
                      final bool emailValid =
                      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(text!);
                      if(text == null || text.trim().isEmpty){
                        return "Please Enter Your Email";
                      }
                      if(!emailValid){
                        return "Please Enter Vaild Email";
                      }
                      return null ;

                    },
                    onChanged: (text){
                      email = text;
                    },
                    maxLines: 4,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 10, top: 12),
                      labelText: "Ahmedali@mail.com",
                      hintStyle: getMediumBlack14Style(),

                    ),
                  ),
                ),

              ),

              SizedBox(height: 15.h,),
              Text("Password",
              style: getBoldBlack17Style(),
              ),
              SizedBox(height: 10.h,),
              Container(
                width: 327.w,
                height: 65.h,
                decoration: BoxDecoration(
                  color: ColorManager.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(color: ColorManager.greyColor,width: 2),
                ),
                child: Center(
                  child: TextFormField(
                    validator: (text){
                      if(text == null || text.trim().isEmpty){
                        return "Please Enter Your Password";
                      }
                      if(text.length < 6){
                        return "Password must be at least 6 numbers";
                      }
                      return null ;

                    },
                    onChanged: (text){
                      password = text;
                    },
                    maxLines: 4,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 10, top: 12),
                      labelText: "12345678",
                      labelStyle: getMediumBlack14Style(),

                    ),
                  ),
                ),

              ),

              SizedBox(height: 40.h,),
              Container(
                height: 50.h,
                width: 365.w,
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(backgroundColor: ColorManager.mainPrimaryColor4),
                    onPressed: (){
                    showAlertDialogLogin(context);
                    },
                    child: Text("Next",
                    style: getBoldWhite18Style(),
                    )),
              ),
              SizedBox(height: 40.h,),
              Center(
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(AuthScreen.routeName);
                  },
                  child: Text("Don't have an account",
                  style: getBoldBlack17Style(),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  // void validateForm(){
  //   if(formKey.currentState?.validate() == true){
  //     showAlertDialogLogin(context);
  //   }
  // }
}
