import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditMyAdress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "My Adress",
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
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 0),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
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
                              top: 20,
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
                              "Adress",
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
                              "Province",
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
                              "Commune",
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
                              "District",
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
                              "Village",
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: Text(
                          "Choose from Map",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
