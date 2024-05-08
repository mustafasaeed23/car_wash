import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/Screens/payment.dart';
import 'package:untitled3/mangers/color_manager.dart';
import 'package:untitled3/mangers/styles_manager.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});
  static const String routeName = 'book';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35.r),
            bottomRight: Radius.circular(35.r),
          )
        ),
        toolbarHeight: 250.h,
        flexibleSpace: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft:Radius.circular(35.r),
               bottomRight: Radius.circular(35.r),
            ),
          ),
          child: Image.asset("assets/images/map.png",
          width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Services : ",
            style: getBoldBlack18Style().copyWith(color: ColorManager.mainBlue),
            ),
            SizedBox(height: 15.h,),
            Row(
              children: [
                Icon(Icons.circle_outlined, size: 30, color: ColorManager.mainBlue,),
                SizedBox(width: 10.w,),
                Text("Internal Washing",
                style: getMediumBlack18Style(),
                )
              ],
            ),
            SizedBox(height: 15.h,),
            Row(
              children: [
                Icon(Icons.circle_outlined, size: 30, color: ColorManager.mainBlue,),
                SizedBox(width: 10.w,),
                Text("External Washing",
                  style: getMediumBlack18Style(),
                )
              ],
            ),
            SizedBox(height: 15.h,),
            Row(
              children: [
                Icon(Icons.circle_outlined, size: 30, color: ColorManager.mainBlue,),
                SizedBox(width: 10.w,),
                Text("Chemical Washing",
                  style: getMediumBlack18Style(),
                )
              ],
            ),
            SizedBox(height: 15.h,),
            Row(
              children: [
                Icon(Icons.circle_outlined, size: 30, color: ColorManager.mainBlue,),
                SizedBox(width: 10.w,),
                Text("Full Washing",
                  style: getMediumBlack18Style(),
                )
              ],
            ),
            SizedBox(height: 15.h,),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: Row(
                children: [
                  Text("Cost",
                  style: getBoldBlack20Style().copyWith(color: ColorManager.mainBlue) ,
                  ),
                  Spacer(),
                  Text("250 EG",
                  style: getBoldBlack20Style().copyWith(color: ColorManager.mainPrimaryColor1) ,
                  )

                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Center(
              child: Text("Available Time",
              style: getBoldBlack20Style(),
              ),
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 70.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(color: ColorManager.mainBlue, width: 4)
                    ),
                    child: Center(
                      child: Text("3:PM",
                      style: getMediumBlack15Style(),
                      ),
                    ),
                  ),
                  Text("6:PM",
                    style: getMediumBlack15Style(),

                  ),
                  Text("9:PM",
                    style: getMediumBlack15Style(),

                  ),
                  Text("12:AM",
                    style: getMediumBlack15Style(),

                  ),


                ],
              ),
            ),
            SizedBox(height: 50.h,),
            Center(
              child: Container(
                width: 170.w,
                height: 50.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: ColorManager.mainPrimaryColor1),
                    onPressed: (){
                    Navigator.of(context).pushNamed(PaymentScreen.routeName);
                    },
                    child: Text("Pay",
                    style: getBoldWhite25Style(),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
