// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/Screens/servics_details.dart';
import 'package:untitled3/mangers/color_manager.dart';
import 'package:untitled3/mangers/styles_manager.dart';

class ServicesWidget extends StatelessWidget{
  Color color ;
  IconData icon ;
  String text ;
  ServicesWidget({super.key, required this.color, required this.icon, required this.text});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(ServicesDetails.routeName);
      },
      child: Container(
        width: 327.w,
        height: 90.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              Icon(icon , size: 40, color: ColorManager.white,),
              SizedBox(width: 15.w,),
              Text(text,
              style: getBoldWhite14Style(),
              )
            ],
          ),
        ) ,
      ),
    );
  }
}
