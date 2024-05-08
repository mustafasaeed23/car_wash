import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/mangers/color_manager.dart';

import '../Screens/home_screen.dart';
import '../Widgets/register_widget.dart';
import '../login/login_screen.dart';
import '../mangers/styles_manager.dart';


class AuthScreen extends StatelessWidget {
  static const String routeName ='auth';

  String firstName ='';
  String lastName ='';
  String email ='';
  String phone ='';
  String password ='';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Center(
            child: Form(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.h,),

                  Center(
                    child: Text("Get Started!",
                    style: getBoldBlack24Style().copyWith(color: ColorManager.mainPrimaryColor4),
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Text("First Name",
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
                            return "Please Enter Your First Name";
                          }
                          return null ;
                        },
                        onChanged: (text){
                          firstName = text;
                        },
                        maxLines: 4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.only(left: 10, top: 12),
                          hintText: "Enter Your First Name",
                          hintStyle: getMediumBlack14Style(),

                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 15.h,),
                  Text("Last Name",
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
                            return "Please Enter Your First Name";
                          }
                          return null ;

                        },
                        onChanged: (text){
                          lastName = text;
                        },
                        maxLines: 4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.only(left: 10, top: 12),
                          hintText: "Enter Your Last Name",
                          hintStyle: getMediumBlack14Style(),

                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 15.h,),
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
                            return "Please Enter Your First Name";
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
                          hintText: "Enter Your Email",
                          hintStyle: getMediumBlack14Style(),

                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 15.h,),
                  Text("Phone",
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
                            return "Please Enter Your Phone";
                          }
                          if( text.length < 11){
                            return "Phone Number must be at least 11 numbers";
                          }
                          return null ;

                        },
                        onChanged: (text){
                          phone = text;
                        },
                        maxLines: 4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.only(left: 10, top: 12),
                          hintText: "Enter Your Phone",
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
                          hintText: "Enter Your Password",
                          hintStyle: getMediumBlack14Style(),

                        ),
                      ),
                    ),

                  ),
                  SizedBox(height:30.h),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorManager.mainPrimaryColor4
                          ),
                            onPressed: (){
                            Navigator.of(context).pushNamed(HomeScreen.routeName);
                            },
                            child: Text("Sign up",
                            style: getBoldWhite18Style(),
                            )),
                      ),
                      SizedBox(width: 10.w,),
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: ColorManager.mainPrimaryColor3
                            ),
                            onPressed: (){
                              Navigator.of(context).pushNamed(LoginScreen.routeName);
                            },
                            child: Text("Log in",
                              style: getBoldWhite18Style(),
                            )),
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
