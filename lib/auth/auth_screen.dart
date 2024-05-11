import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/mangers/color_manager.dart';
import 'package:untitled3/utills.dart';

import '../Screens/home_screen.dart';
import '../Widgets/register_widget.dart';
import '../login/login_screen.dart';
import '../mangers/styles_manager.dart';


class AuthScreen extends StatefulWidget {
  static const String routeName ='auth';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var firstnameController = TextEditingController();
  var lastnameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();

  String firstName ='';

  String lastName ='';

  String email ='';

  String phone ='';

  String password ='';

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Center(
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
                      controller: firstnameController,
                      onChanged: (text){
                        firstName = text;
                      },
                      validator: (text){
                        if(text == null || text.trim().isEmpty){
                          return "Please Enter Your First Name";
                        }
                        return null ;
                      },

                      maxLines: 4,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(left: 10, top: 12),
                        labelText: "Ahmed",
                        labelStyle: getMediumBlack14Style(),

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
                      controller: lastnameController,

                      onChanged: (text){
                        lastName = text;
                      },
                      validator: (text){
                        if(text == null || text.trim().isEmpty ){
                          return "Please Enter Your last Name";
                        }
                        return null ;

                      },

                      maxLines: 4,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(left: 10, top: 12),
                        labelText: "Ali",
                        labelStyle: getMediumBlack14Style(),

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
                      controller: emailController,
                      onChanged: (text){
                        email = text;
                      },
                      validator: (text){

                        if(text == null || text.trim().isEmpty){
                          return "Please Enter Email";
                        }

                        return null ;

                      },

                      maxLines: 4,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(left: 10, top: 12),
                        labelText: "Ahmedali@mail.com",
                        labelStyle: getMediumBlack14Style(),

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
                       controller: phoneController,
                      onChanged: (text){
                        phone = text;
                      },
                      validator: (text){
                        if(text == null || text.trim().isEmpty){
                          return "Please Enter Your Phone";
                        }
                        if( text.length < 11){
                          return "Phone Number must be at least 11 numbers";
                        }
                        return null ;

                      },

                      maxLines: 4,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(left: 10, top: 12),
                        labelText: "01205542394",
                        labelStyle: getMediumBlack14Style(),

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
                      controller: passwordController,
                      onChanged: (text){
                        password = text;
                      },
                      validator: (text){
                        if(text == null || text.trim().isEmpty){
                          return "Please Enter Your Password";
                        }
                        if(text.length < 6){
                          return "Password must be at least 6 numbers";
                        }
                        return null ;

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
                SizedBox(height:30.h),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorManager.mainPrimaryColor4
                        ),
                          onPressed: (){
                           showAlertDialogAuth(context);
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
    );
  }

  // void validateForm(){
  //   if(formKey.currentState?.validate() == true){
  //     Navigator.of(context).pushNamed(HomeScreen.routeName);
  //
  //   }
  // }
}
