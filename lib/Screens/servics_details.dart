import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/Widgets/communities_widget.dart';
import 'package:untitled3/mangers/color_manager.dart';
import 'package:untitled3/mangers/styles_manager.dart';

class ServicesDetails extends StatelessWidget {
  const ServicesDetails({super.key});

  static const String routeName = 'srvices_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Community",
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30.h,),
            Text(
              " Choose Car Wash",
              style: getBoldBlack20Style(),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.h,),
            CommunitiesWidget(
              imagePath: 'assets/images/autoblog_dark 1.png',
              text: 'Aquaglow Car',
              rateText: '4.9',),
            SizedBox(height: 20.h,),
            CommunitiesWidget(
                imagePath: 'assets/images/bocar-logo-footer 1.png',
                text: 'GleamTech Wash', rateText: '3.8'),
            SizedBox(height: 20.h,),
            CommunitiesWidget(imagePath: 'assets/images/logo 1.png',
                text: 'PolishPro', rateText: '3.7'),
            SizedBox(height: 20.h,),
            // CommunitiesWidget(
            //     // imagePath: 'assets/images/International-Franchise-Logo 1.png',
            //     text: 'ClearCoat Wash', rateText: '3.6', imagePath: '',),
            CommunitiesWidget(imagePath: 'assets/images/header-logo@2x 1.png',
                text: 'Sparkle Wash', rateText: '3.5'),
            SizedBox(height: 20.h,),


        
        
          ],
        ),
      ),
    );
  }
}
