import 'package:charity_app/view/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.only(top: ScreenUtil().setHeight(50)),
                    child: Text(
                      "Confirm OTP",
                      style: GoogleFonts.ubuntu(
                          fontSize: ScreenUtil().setSp(30),
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    child: Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
                  child: Text(
                    "Enter OTP we just sent to your phone number",
                    style: GoogleFonts.ubuntu(
                      fontSize: ScreenUtil().setSp(16),
                    ),
                    overflow: TextOverflow.visible,
                  ),
                )),
              ],
            ),
            Row(
              children: [
                otpCard(),
                otpCard(),
                otpCard(),
                otpCard(),
                otpCard(),
                otpCard(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                  child: Text(
                    "Time Remaining: 2:00 Mins",
                    style: GoogleFonts.ubuntu(fontSize: ScreenUtil().setSp(15)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Resend",
                    style: GoogleFonts.ubuntu(
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  height: ScreenUtil().setHeight(40),
                  width: ScreenUtil().setWidth(140),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (contex) => LandingPage()),
                          (Route<dynamic> route) => false);
                    },
                    child: Text("Submit",
                        style: GoogleFonts.ubuntu(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(20),
                            fontWeight: FontWeight.w500)),
                  )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget otpCard() {
  return Card(
    margin: EdgeInsets.only(top: 20, left: 20),
    child: Container(
        height: ScreenUtil().setHeight(40),
        width: ScreenUtil().setWidth(40),
        child: TextField(
          keyboardType: TextInputType.number,
          style: GoogleFonts.ubuntu(fontSize: ScreenUtil().setSp(18)),
          textAlign: TextAlign.center,
          maxLength: 1,
          decoration: InputDecoration(
              counter: Offstage(),
              focusedBorder: InputBorder.none,
              border: InputBorder.none),
        )),
  );
}
