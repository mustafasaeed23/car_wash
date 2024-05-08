// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/Screens/Review.dart';
import 'package:untitled3/Screens/book_screen.dart';
import 'package:untitled3/mangers/color_manager.dart';
import 'package:untitled3/mangers/styles_manager.dart';

class CommunitiesWidget extends StatelessWidget {
  String imagePath ;
  String text ;
  String rateText;

  CommunitiesWidget({super.key, required this.imagePath,required this.text, required this.rateText});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(BookScreen.routeName);
        },
        child: Container(
          width: 327.w,
          height: 110.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            color: ColorManager.mainBlue,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(imagePath),
              SizedBox(width: 15.w,),
                Text(text,
                style: getBoldWhite14Style(),
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(ReviewScreen.routeName);
                  },
                    child: Icon(Icons.star, size: 25, color: Colors.yellow,)),
                SizedBox(width: 5,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(ReviewScreen.routeName);
                  },
                  child: Text( rateText,
                  style: getRegularWhite14Style(),
                  ),
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}
