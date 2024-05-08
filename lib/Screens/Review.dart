import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/Widgets/review_container.dart';

import '../mangers/color_manager.dart';
import '../mangers/styles_manager.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});
  static const String routeName ='review';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Reviews",
          style: getBoldWhite25Style(),
        ),
        centerTitle: true,
        backgroundColor: ColorManager.mainPrimaryColor4,
        toolbarHeight: 150.h,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(35.r),
              bottomLeft: Radius.circular(35.r),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/review.png",

            )),
            SizedBox(height: 20.h,),
            ReviewContainer(
              imagePath: 'assets/images/profile1.png',
              text1: 'Kayla',
              text2: 'Very Special Service',),
            SizedBox(height: 20,),
            ReviewContainer(
              imagePath: 'assets/images/profile2.png',
              text1: 'Saned',
              text2: 'Very Good',),
            SizedBox(height: 20,),
            ReviewContainer(
              imagePath: 'assets/images/profile3.png',
              text1: 'Lareen',
              text2: 'Super and Special',),
            SizedBox(height: 40,),
            Container(
              width: 260.w,
              height: 55.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: ColorManager.mainPrimaryColor4),
                  onPressed: (){},
                  child: Text('Add Your Review',
                  style: getBoldWhite14Style(),
                  )),
            ),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
