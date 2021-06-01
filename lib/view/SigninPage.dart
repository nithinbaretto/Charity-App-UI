import 'package:charity_app/controller/validations.dart';
import 'package:charity_app/view/otpPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final validationController = Get.put(Validations());
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment(-0.6, -0.6),
                          colors: [
                            Colors.blue.shade50,
                            Colors.blue.shade50,
                          ],
                          tileMode: TileMode.decal)),
                ),
              ),
              Positioned(
                child: Image.asset("assets/images/Logo.png",
                    height: ScreenUtil().setHeight(200),
                    width: ScreenUtil().setWidth(200),
                    color: Color(
                      0xFF42A5F5,
                    )),
                left: ScreenUtil().setWidth(150),
              ),
              Positioned(
                  top: ScreenUtil().setHeight(180),
                  left: ScreenUtil().setWidth(20),
                  child: Form(
                    key: _key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "SignIn to Get",
                            style: GoogleFonts.ubuntu(
                                fontSize: ScreenUtil().setSp(33),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Code",
                            style: GoogleFonts.ubuntu(
                                fontSize: ScreenUtil().setSp(33),
                                color: Colors.blue,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(top: ScreenUtil().setHeight(20)),
                          child: Text(
                            "Phone number",
                            style: GoogleFonts.ubuntu(
                              fontSize: ScreenUtil().setSp(20),
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                          width: ScreenUtil().setWidth(350),
                          child: TextFormField(
                              controller: numberController,
                              onChanged: (v) {
                                // validationController.valiadtionsError(v);
                              },
                              validator: (v) {
                                return validationController
                                    .numberValiadtionsError(
                                        numberController.text);
                              },
                              keyboardType: TextInputType.numberWithOptions(
                                decimal: false,
                              ),
                              decoration: InputDecoration(
                                  labelText: "Number",
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 2.0, color: Colors.black),
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(top: ScreenUtil().setHeight(20)),
                          child: Text(
                            "Name",
                            style: GoogleFonts.ubuntu(
                              fontSize: ScreenUtil().setSp(20),
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                          width: ScreenUtil().setWidth(350),
                          child: TextFormField(
                              controller: nameController,
                              onChanged: (v) {
                                // validationController.valiadtionsError(v);
                              },
                              validator: (v) {
                                return validationController
                                    .nameValiadtionsError(v!);
                              },
                              decoration: InputDecoration(
                                  labelText: "Name",
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 2.0, color: Colors.black),
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                        ),
                        GestureDetector(
                          onTap: () {
                            validationController.submit(_key).then((value) {
                              if (value == "done") {
                                print(value);
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (contex) {
                                  return OtpPage();
                                }));
                              }
                            });
                          },
                          child: Container(
                              margin: EdgeInsets.only(
                                  top: ScreenUtil().setHeight(20)),
                              height: ScreenUtil().setHeight(45),
                              width: ScreenUtil().setWidth(350),
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                child: Text("Sign in",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: ScreenUtil().setSp(20),
                                        fontWeight: FontWeight.w500)),
                              )),
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(20),
                        ),
                        Container(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 2.5),
                            child: Text(
                              "Or",
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (contex) {
                              return OtpPage();
                            }));
                          },
                          child: Container(
                              margin: EdgeInsets.only(
                                  top: ScreenUtil().setHeight(20)),
                              height: ScreenUtil().setHeight(45),
                              width: ScreenUtil().setWidth(350),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                child: Text("SignIn with FaceBook",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: ScreenUtil().setSp(20),
                                        fontWeight: FontWeight.w500)),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (contex) {
                              return OtpPage();
                            }));
                          },
                          child: Container(
                              margin: EdgeInsets.only(
                                  top: ScreenUtil().setHeight(20)),
                              height: ScreenUtil().setHeight(45),
                              width: ScreenUtil().setWidth(350),
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                child: Text("SignIn with Google",
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: ScreenUtil().setSp(20),
                                        fontWeight: FontWeight.w500)),
                              )),
                        ),
                      ],
                    ),
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
