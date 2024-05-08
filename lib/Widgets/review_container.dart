// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/mangers/color_manager.dart';
import 'package:untitled3/mangers/styles_manager.dart';

class ReviewContainer extends StatelessWidget {

  String imagePath ;
  String text1 ;
  String text2;

  ReviewContainer({super.key, required this.imagePath, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 77.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        boxShadow: const [
          BoxShadow(
            blurStyle: BlurStyle.inner,
            offset: Offset(0, 2),
            blurRadius: 20,
            color: Colors.grey
          ),
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 30.r,
            child: Image.asset(imagePath),
          ),
          SizedBox(width: 10.h,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text1,
              style: getBoldBlack14Style().copyWith(color: ColorManager.mainPrimaryColor4),
              ),
              SizedBox(height: 8.h,),
              Text(text2,
              style: getMediumBlack12Style(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
