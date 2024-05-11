import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/Screens/home_screen.dart';
import 'package:untitled3/Widgets/custom_Text_form_field.dart';
import 'package:untitled3/mangers/color_manager.dart';
import 'package:untitled3/mangers/styles_manager.dart';

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pushNamed(HomeScreen.routeName);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Column(
      children: [
        // Center(
        //   child: CircularProgressIndicator(
        //     color: ColorManager.mainPrimaryColor4,
        //     semanticsLabel: "Loading...",
        //   ),
        // ),
        Image.asset(
          "assets/images/check 1.png",
          width: 160.w,
          height: 170.h,
          fit: BoxFit.fill,
          color: ColorManager.mainPrimaryColor2,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          "Success Transicaton !",
          style: getMediumBlack18Style(),
        )
      ],
    ),
    content: Text(
      "Hope you get Satisfied with \n our Services ",
      style: getRegularBlack16Style(),
    ),
    actions: [
      okButton,
    ],

  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

void addCard(BuildContext context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.r),
          topLeft: Radius.circular(30.r),
        ),
      ),
      context: context,
      builder: (context) => Scaffold(
        // resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 327.w,
                        height: 200.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(color: ColorManager.mainPrimaryColor4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ImageIcon(
                                      AssetImage("assets/images/credit-card 1.png"),
                                      color: ColorManager.mainBlue,
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    Text(
                                      "Credit/Debit Card",
                                      style: getBoldBlack17Style(),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                color: ColorManager.mainPrimaryColor4,
                                thickness: 2,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text("Card Name",
                                style: getBoldBlack17Style(),
                                ),
                              ),
                              SizedBox(height: 15.h,),
                              Center(
                                child: Container(
                                width: 259.w,
                                 height: 55.h,
                                   decoration: BoxDecoration(
                                            border: Border.all(color: ColorManager.mainPrimaryColor4, width: 1.5),
                                      borderRadius: BorderRadius.circular(20.r),
                
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                
                                    ),
                                  ),
                                ),
                              ),
                
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h,),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: ColorManager.mainPrimaryColor2),
                          onPressed: (){
                          Navigator.pop(context);
                          },
                          child: Text("Done",
                          style: getBoldWhite14Style(),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ));
}

showAlertDialogAuth(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pushNamed(HomeScreen.routeName);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Column(
      children: [
        // Center(
        //   child: CircularProgressIndicator(
        //     color: ColorManager.mainPrimaryColor4,
        //     semanticsLabel: "Loading...",
        //   ),
        // ),

        Text(
          "Account Created Successfully",
          style: getMediumBlack18Style(),
        )
      ],
    ),
    // content: Text(
    //   "Hope you get Satisfied with \n our Services ",
    //   style: getRegularBlack16Style(),
    // ),
    actions: [
      okButton,
    ],

  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialogLogin(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pushNamed(HomeScreen.routeName);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Column(
      children: [
        // Center(
        //   child: CircularProgressIndicator(
        //     color: ColorManager.mainPrimaryColor4,
        //     semanticsLabel: "Loading...",
        //   ),
        // ),
        // Image.asset(
        //   "assets/images/check 1.png",
        //   width: 160.w,
        //   height: 170.h,
        //   fit: BoxFit.fill,
        //   color: ColorManager.mainPrimaryColor2,
        // ),
        // SizedBox(
        //   height: 20.h,
        // ),
        Text(
          "Login Successfully",
          style: getMediumBlack18Style(),
        )
      ],
    ),
    // content: Text(
    //   "Hope you get Satisfied with \n our Services ",
    //   style: getRegularBlack16Style(),
    // ),
    actions: [
      okButton,
    ],

  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

