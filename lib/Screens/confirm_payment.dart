import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/utills.dart';

import '../mangers/color_manager.dart';
import '../mangers/styles_manager.dart';

class ConfirmPayment extends StatelessWidget {
  const ConfirmPayment({super.key});
  static const String routeName ='confirm';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Payment",
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
            Center(child: Image.asset("assets/images/confirm.png")),
            SizedBox(height: 20.h,),
            Container(
              width: 352.w,
              height: 230.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurStyle: BlurStyle.outer,
                    blurRadius: 4,
                    color: Colors.grey
                  ),
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Services",
                      style: getBoldBlack17Style(),
                      ),
                      Text("External Washing",
                      style: getMediumBlack15Style(),
                      ),

                    ],
                  ),
                  SizedBox(height: 17.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Car Wash",
                        style: getBoldBlack17Style(),
                      ),
                      Text("Sparkle Wash",
                        style: getMediumBlack15Style(),
                      ),

                    ],
                  ),
                  SizedBox(height: 17.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Time",
                        style: getBoldBlack17Style(),
                      ),
                      SizedBox(width: 160.w,),
                      Text("3:PM",
                        style: getMediumBlack15Style(),
                      ),

                    ],
                  ),
                  SizedBox(height: 17.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Cost",
                        style: getBoldBlack17Style(),
                      ),
                      SizedBox(width: 150.w,),
                      Text("200 EG",
                        style: getMediumBlack15Style().copyWith(color: ColorManager.mainPrimaryColor1),
                      )
                    ],
                  ),
                  SizedBox(height: 17.h,),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: ColorManager.mainPrimaryColor1),
                onPressed: (){
                showAlertDialog(context);
                },
                child: Text("Confirm Transaction",
                style: getBoldWhite14Style(),
                )),
            SizedBox(height: 20.h,),

          ],
        ),
      ),
    );
  }
}
