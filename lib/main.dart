import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/Screens/Review.dart';
import 'package:untitled3/Screens/book_screen.dart';
import 'package:untitled3/Screens/confirm_payment.dart';
import 'package:untitled3/Screens/home_screen.dart';
import 'package:untitled3/Screens/payment.dart';
import 'package:untitled3/Screens/servics_details.dart';
import 'package:untitled3/auth/auth_screen.dart';
import 'package:untitled3/login/login_screen.dart';
import 'package:untitled3/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) =>
       MaterialApp(
         debugShowCheckedModeBanner: false,
        routes: {
          SplashScreen.routeName:(context)=> SplashScreen(),
          AuthScreen.routeName:(context)=>  AuthScreen(),
          LoginScreen.routeName:(context)=> const LoginScreen(),
          HomeScreen.routeName:(context)=> const HomeScreen(),
          ServicesDetails.routeName:(context)=> const ServicesDetails(),
          ReviewScreen.routeName:(context)=> const ReviewScreen(),
          BookScreen.routeName:(context)=> const BookScreen(),
          PaymentScreen.routeName:(context)=> const PaymentScreen(),
          ConfirmPayment.routeName:(context)=> const ConfirmPayment(),
        },
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}

