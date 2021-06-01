import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:image_picker/image_picker.dart';

class UpdatePersonalDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Profile",
            style: TextStyle(color: Colors.black),
          )),
          backgroundColor: Colors.grey.shade50,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            Container(
              padding: EdgeInsets.only(
                  top: ScreenUtil().setHeight(15),
                  right: ScreenUtil().setWidth(10)),
              child: Text(
                "Save",
                style: TextStyle(
                    color: Colors.pink, fontSize: ScreenUtil().setSp(20)),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                    top: 50,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 10,
                                top: 50,
                              ),
                              child: Text(
                                "Name",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              margin: EdgeInsets.only(
                                  left: 20, top: 10, right: 20, bottom: 10),
                              child: TextFormField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                      color: Colors.grey.shade300, width: 1.0)),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 10,
                                top: 10,
                              ),
                              child: Text(
                                "Email",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              margin: EdgeInsets.only(
                                  left: 20, top: 10, right: 20, bottom: 10),
                              child: TextFormField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                      color: Colors.grey.shade300, width: 1.0)),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 10,
                                top: 10,
                              ),
                              child: Text(
                                "Phone Number",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              margin: EdgeInsets.only(
                                  left: 20, top: 10, right: 20, bottom: 30),
                              child: TextFormField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                      color: Colors.grey.shade300, width: 1.0)),
                            )
                          ],
                        ),
                      ),
                    )),
                Positioned(
                  top: ScreenUtil().setHeight(10),
                  left: ScreenUtil().setWidth(150),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue),
                        child: Image.network(
                            "https://www.newmynamepix.com/upload/post/sample/1584374992_Attitude_Boy_Whatsapp_Dp_With_Name_Profile_Images.jpg"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: ScreenUtil().setHeight(50),
                    left: ScreenUtil().setWidth(210),
                    child: GestureDetector(
                      onTap: () async {
                        // await ImagePicker.pickImage(
                        //     source: ImageSource.gallery, imageQuality: 50);
                      },
                      child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.pink,
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            size: 16,
                          )),
                    )),
              ],
            ),
          ),
        ));
  }
}
