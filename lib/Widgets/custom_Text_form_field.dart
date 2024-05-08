// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../mangers/color_manager.dart';
import '../mangers/styles_manager.dart';

class CustomTextFormField extends StatelessWidget {
  String text ;


  CustomTextFormField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 65.h,
      decoration: BoxDecoration(
        color: ColorManager.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: ColorManager.greyColor,width: 2),
      ),
      child: Center(
        child: TextFormField(

          maxLines: 4,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.only(left: 10, top: 12),
            hintText: text,
            hintStyle: getMediumBlack14Style(),

          ),
        ),
      ),

    );
  }
}
