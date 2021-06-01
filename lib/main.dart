// @dart=2.9
import 'package:charity_app/view/SigninPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(392, 781),
      builder: () => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
              primarySwatch: Colors.blue,
              fontFamily: GoogleFonts.ubuntu().fontFamily),
          home: SignInPage()),
    );
  }
}
