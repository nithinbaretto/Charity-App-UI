import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = ScreenUtil().setWidth;
    final h = ScreenUtil().setHeight;
    final sp = ScreenUtil().setSp;
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Create Help",
          style: TextStyle(color: Colors.black),
        )),
        backgroundColor: Colors.grey.shade50,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Card(
              elevation: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: w(10),
                      top: h(20),
                    ),
                    child: Text(
                      "Name",
                      style: TextStyle(fontSize: sp(16)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: w(10)),
                    margin: EdgeInsets.only(
                        left: w(20), top: h(10), right: w(20), bottom: h(10)),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(
                            color: Colors.grey.shade300, width: 1.0)),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: w(10),
                      top: h(10),
                    ),
                    child: Text(
                      "Purpose",
                      style: TextStyle(fontSize: sp(16)),
                    ),
                  ),
                  Container(
                    height: h(100),
                    padding: EdgeInsets.only(left: w(10)),
                    margin: EdgeInsets.only(
                        left: w(20), top: h(10), right: w(20), bottom: h(10)),
                    child: TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(
                            color: Colors.grey.shade300, width: 1.0)),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: w(10), top: h(20)),
                        child: Text(
                          "Request amount :",
                          style: TextStyle(fontSize: sp(16)),
                        ),
                      ),
                      Container(
                        width: w(200),
                        padding: EdgeInsets.only(left: w(10)),
                        margin: EdgeInsets.only(
                            left: w(20),
                            top: h(10),
                            right: w(20),
                            bottom: h(20)),
                        child: TextFormField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1.0)),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: w(10), top: h(10)),
                        child: Text(
                          "Use Point :",
                          style: TextStyle(fontSize: sp(16)),
                        ),
                      ),
                      Container(
                        width: w(200),
                        padding: EdgeInsets.only(left: w(10)),
                        margin: EdgeInsets.only(
                            left: w(70),
                            top: h(0),
                            right: w(20),
                            bottom: h(10)),
                        child: TextFormField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1.0)),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: w(10), top: h(20)),
                        child: Text(
                          "Use balance :",
                          style: TextStyle(fontSize: sp(16)),
                        ),
                      ),
                      Container(
                        width: w(200),
                        padding: EdgeInsets.only(left: w(10)),
                        margin: EdgeInsets.only(
                            left: w(50),
                            top: h(10),
                            right: w(20),
                            bottom: h(0)),
                        child: TextFormField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1.0)),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: w(10),
                      top: h(10),
                    ),
                    child: Text(
                      "Category",
                      style: TextStyle(fontSize: sp(16)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: w(10)),
                    margin: EdgeInsets.only(
                        left: w(20), top: h(10), right: w(20), bottom: h(0)),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(
                            color: Colors.grey.shade300, width: 1.0)),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: w(10),
                      top: h(20),
                    ),
                    child: Text(
                      "Phone number",
                      style: TextStyle(fontSize: sp(16)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: w(10)),
                    margin:
                        EdgeInsets.only(left: w(20), top: h(10), right: w(20)),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(
                            color: Colors.grey.shade300, width: 1.0)),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: w(10),
                      top: h(20),
                    ),
                    child: Text(
                      "Adress",
                      style: TextStyle(fontSize: sp(16)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: w(10)),
                    margin: EdgeInsets.only(
                        left: w(20), top: h(10), right: w(20), bottom: h(20)),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(
                            color: Colors.grey.shade300, width: 1.0)),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: w(10), top: h(10)),
                        child: Text(
                          "End Date :",
                          style: TextStyle(fontSize: sp(16)),
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: EdgeInsets.only(left: 10),
                        margin: EdgeInsets.only(
                            left: w(50), top: h(0), right: w(20), bottom: h(0)),
                        child: TextFormField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1.0)),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: w(10),
                      top: h(20),
                    ),
                    child: Text(
                      "Thumbnails :",
                      style: TextStyle(fontSize: sp(16)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: w(10),
                      top: h(20),
                    ),
                    height: h(100),
                    width: w(100),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border:
                          Border.all(color: Colors.grey.shade300, width: 1.0),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  SizedBox(
                    height: h(20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: h(40),
                        width: w(150),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                            child: Text(
                          "Save Draft",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: sp(16),
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                      SizedBox(
                        width: w(10),
                      ),
                      Container(
                          height: h(40),
                          width: w(150),
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                              child: Text(
                            "Publish",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: sp(16),
                                fontWeight: FontWeight.w600),
                          ))),
                    ],
                  ),
                  SizedBox(
                    height: h(20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
