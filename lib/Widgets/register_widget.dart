// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../mangers/styles_manager.dart';
import 'custom_Text_form_field.dart';

class RegisterWidget extends StatelessWidget {
  String text ;
  String textFormText;

  RegisterWidget({super.key, required this.text, required this.textFormText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( text,
          style: getBoldBlack16Style(),
        ),
        SizedBox(height: 5.h,),
        CustomTextFormField(text: textFormText,),
      ],
    );
  }
}
