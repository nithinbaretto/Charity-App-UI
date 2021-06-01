import 'package:charity_app/controller/AccountDetailsController.dart';
import 'package:charity_app/view/EditMyAdress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyAdress extends StatelessWidget {
  final accountDetailsController = Get.put(AccountDetailsController());
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
              "Edit",
              style: TextStyle(
                  color: Colors.pink, fontSize: ScreenUtil().setSp(20)),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: ScreenUtil().setHeight(60),
                      width: ScreenUtil().setWidth(60),
                      margin: EdgeInsets.only(
                          left: ScreenUtil().setWidth(20),
                          top: ScreenUtil().setHeight(10),
                          bottom: ScreenUtil().setHeight(10)),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Icon(
                          Icons.shop_rounded,
                          size: ScreenUtil().setSp(36),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Container(
                            width: 180,
                            margin: EdgeInsets.only(
                                left: ScreenUtil().setWidth(10),
                                top: ScreenUtil().setHeight(15)),
                            child: Text(
                              accountDetailsController
                                  .accountDetails[1].accountName,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: ScreenUtil().setWidth(10),
                              top: ScreenUtil().setHeight(5)),
                          child: Text(
                            accountDetailsController
                                .accountDetails[1].accountNumber,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                        height: ScreenUtil().setHeight(20),
                        width: ScreenUtil().setWidth(20),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25)),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: ScreenUtil().setSp(18),
                        )),
                    SizedBox(
                      width: ScreenUtil().setHeight(10),
                    ),
                    Container(
                        height: ScreenUtil().setHeight(20),
                        width: ScreenUtil().setWidth(20),
                        margin:
                            EdgeInsets.only(right: ScreenUtil().setWidth(10)),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(25)),
                        child: Icon(
                          Icons.delete,
                          color: Colors.white,
                          size: 18,
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(10),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: ScreenUtil().setHeight(60),
                      width: ScreenUtil().setWidth(60),
                      margin: EdgeInsets.only(
                          left: ScreenUtil().setWidth(20),
                          top: ScreenUtil().setHeight(10),
                          bottom: ScreenUtil().setHeight(10)),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Icon(
                          Icons.shop_rounded,
                          size: ScreenUtil().setSp(36),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Container(
                            width: 180,
                            margin: EdgeInsets.only(
                                left: ScreenUtil().setWidth(10),
                                top: ScreenUtil().setHeight(15)),
                            child: Text(
                              accountDetailsController
                                  .accountDetails[0].accountName,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: ScreenUtil().setWidth(10),
                              top: ScreenUtil().setHeight(5)),
                          child: Text(
                            accountDetailsController
                                .accountDetails[0].accountNumber,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                        height: ScreenUtil().setHeight(20),
                        width: ScreenUtil().setWidth(20),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25)),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 18,
                        )),
                    SizedBox(
                      width: ScreenUtil().setWidth(10),
                    ),
                    Container(
                        height: ScreenUtil().setWidth(20),
                        width: ScreenUtil().setWidth(20),
                        margin:
                            EdgeInsets.only(right: ScreenUtil().setWidth(10)),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(25)),
                        child: Icon(
                          Icons.delete,
                          color: Colors.white,
                          size: 18,
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(10),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: ScreenUtil().setHeight(70),
                  child: Icon(
                    Icons.add_circle_outline,
                    size: 28,
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(10),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(EditMyAdress());
                  },
                  child: Container(
                    child: Text(
                      "Add New Address",
                      style: TextStyle(fontSize: ScreenUtil().setSp(18)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
