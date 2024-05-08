import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/Screens/confirm_payment.dart';
import 'package:untitled3/utills.dart';

import '../mangers/color_manager.dart';
import '../mangers/styles_manager.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  static const String routeName='Payment';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Payment",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 292.w,
              height: 62.h,
              decoration: BoxDecoration(
                border: Border.all(color: ColorManager.mainPrimaryColor4, width: 2),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const ImageIcon(AssetImage("assets/images/cash 1.png",), size: 40, color: Colors.green,),
                  SizedBox(width: 10.w,),
                  Text("Cash on Order",
                  style: getMediumBlack16Style(),
                  ),
                  Spacer(),
                  Icon(Icons.navigate_next, size: 30 , color: Colors.black,)
                ],
              ),
            ),

          ),
          SizedBox(height: 40.h,),
          Center(
            child: Container(
              width: 292.w,
              height: 262.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(color: ColorManager.mainPrimaryColor4, width: 2)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ImageIcon(AssetImage("assets/images/credit-card 1.png"), color: ColorManager.mainBlue,),
                          SizedBox( width: 15.w,),
                          Text("Credit/Debit Card",
                          style: getBoldBlack17Style(),
                          )

                        ],
                      ),
                    ),
                    Divider(color: ColorManager.mainPrimaryColor4,thickness: 2,),
                    SizedBox(height: 10.h,),
                    InkWell(
                      onTap: (){
                        addCard(context);
                      },
                      child: Container(
                        width: 259.w,
                        height: 55.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorManager.mainPrimaryColor4, width: 1.5),
                          borderRadius: BorderRadius.circular(20.r),
                      
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Visa",
                            style: getBoldBlack10Style().copyWith(color: Color(0xff8BCBE7), fontSize: 20),
                            ),
                            SizedBox(width: 20.w,),
                            Text("**** **** **** 3325" ,
                            style: getMediumBlack15Style(),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    InkWell(
                      onTap: (){
                        addCard(context);
                      },
                      child:Container(
                      width: 259.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorManager.mainPrimaryColor4, width: 1.5),
                        borderRadius: BorderRadius.circular(20.r),

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/money 1.png" , width: 49.w,height: 39.h,fit: BoxFit.fill,),
                          SizedBox(width: 20.w,),
                          Text("**** **** **** 3325" ,
                            style: getMediumBlack15Style(),
                          )
                        ],
                      ),
                    ),
                    ),


                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40.h,),
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(ConfirmPayment.routeName);
            },
            child: Container(
              width: 250.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: ColorManager.mainPrimaryColor4,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Center(
                child: Text('Pay with your Card',
                style: getBoldWhite14Style(),
                ),
              ),
            ),
          ),
          // SizedBox(width: 15.w,),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          //       backgroundColor: ColorManager.mainPrimaryColor4),
          //     onPressed: (){},
          //     child: Icon(Icons.add, size: 30,color: Colors.white,)),
        ],
      ),
    );
  }
}
