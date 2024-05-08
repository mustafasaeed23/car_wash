import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/Widgets/services_widget.dart';
import 'package:untitled3/mangers/color_manager.dart';
import 'package:untitled3/mangers/styles_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName ='home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: ColorManager.mainPrimaryColor4,
          selectedItemColor: ColorManager.black,
          unselectedItemColor: Colors.white,
          items:  [
            BottomNavigationBarItem(icon:Icon(Icons.home_rounded, size: 30,), label: "Home"),
            BottomNavigationBarItem(icon:Icon(Icons.person,size: 30,), label: "Profile"),
            BottomNavigationBarItem(icon:Icon(Icons.shopping_cart,size: 30,), label: "Cart"),


          ]),
      appBar: AppBar(
        backgroundColor: ColorManager.mainPrimaryColor4,
        toolbarHeight: 150.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(35.r),
            bottomLeft: Radius.circular(35.r),
          )
        ),
        title: Text("Select Area ",
        style: getBoldWhite25Style(),
        ),
        leading: Icon(Icons.arrow_drop_down, color: Colors.white, size: 30,),
        actions: [
          Icon(Icons.support_agent_outlined, color: Colors.white, size: 30,),
          SizedBox(width: 10.w,),
          Icon(Icons.notifications_rounded, color: Colors.white, size: 30,),
          SizedBox(width: 10.w,),

        ],

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("Our Servies :",
            style: getBoldBlack20Style(),
            ),
          ),
          SizedBox(height: 50.h,),
          ServicesWidget(
              color: ColorManager.mainPrimaryColor2,
              icon: Icons.time_to_leave_sharp,
              text: "Car Wash"),
          SizedBox(height: 10.h,),
          ServicesWidget(
              color: ColorManager.mainPrimaryColor1,
              icon: Icons.tire_repair,
              text: "Tire Change"),
          SizedBox(height: 10.h,),
          ServicesWidget(
              color: ColorManager.mainPrimaryColor4,
              icon: Icons.safety_check_rounded,
              text: "Protection"),
          SizedBox(height: 10.h,),
          ServicesWidget(
              color: ColorManager.mainPrimaryColor3,
              icon: Icons.store,
              text: "The Store"),

        ],
      ),
    );
  }
}
