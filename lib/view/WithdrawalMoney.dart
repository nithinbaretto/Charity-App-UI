import 'package:charity_app/controller/AccountDetailsController.dart';
import 'package:charity_app/view/withdrawal_Summary.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WithdrawalMoney extends StatelessWidget {
  final w = ScreenUtil().setWidth;
  final h = ScreenUtil().setHeight;
  final sp = ScreenUtil().setSp;
  final accountController = Get.put(AccountDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Withdraw Money",
          style: TextStyle(color: Colors.black),
        )),
        backgroundColor: Colors.grey.shade50,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(WithdrawalSummary());
            },
            child: Container(
              padding: EdgeInsets.only(
                  top: ScreenUtil().setHeight(20),
                  right: ScreenUtil().setWidth(10)),
              child: Text(
                "Continue",
                style: TextStyle(
                    color: Colors.pink, fontSize: ScreenUtil().setSp(18)),
              ),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                margin: EdgeInsets.only(top: h(20)),
                child: Container(
                  padding: EdgeInsets.only(left: w(20)),
                  height: h(60),
                  width: w(120),
                  child: TextField(
                    style: TextStyle(fontSize: sp(28)),
                    maxLength: 5,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      counter: Offstage(),
                    ),
                  ),
                ),
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: w(10), top: h(20)),
                    child: Text("Rupees"),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: w(10)),
                    child: Text("Max 5000"),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: h(100),
          ),
          Container(
            padding: EdgeInsets.only(left: w(20)),
            child: Text(
              "To",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: h(20),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.only(left: w(10), right: w(10)),
                itemCount: accountController.accountDetails.length,
                itemBuilder: (context, index) {
                  return Column(
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
                                      top: h(10),
                                      bottom: h(10)),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: Icon(
                                      Icons.home,
                                      size: h(36),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: Container(
                                        width: w(180),
                                        margin: EdgeInsets.only(
                                            left: ScreenUtil().setWidth(10),
                                            top: ScreenUtil().setHeight(15)),
                                        child: Text(
                                          accountController
                                              .accountDetails[index]
                                              .accountName,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: sp(18)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: ScreenUtil().setWidth(10),
                                          top: ScreenUtil().setHeight(5)),
                                      child: Text(
                                        accountController.accountDetails[index]
                                            .accountNumber,
                                        style: TextStyle(
                                            fontSize: sp(12),
                                            color: Colors.grey),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                index == 0
                                    ? Container(
                                        margin: EdgeInsets.only(right: w(10)),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: Text("Default"))
                                    : Container()
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: h(10),
                      )
                    ],
                  );
                }),
          ),
          SizedBox(
            height: h(10),
          ),
        ],
      ),
    );
  }
}
