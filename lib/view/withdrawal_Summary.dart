import 'package:charity_app/controller/AccountDetailsController.dart';
import 'package:charity_app/controller/TransactionDetailsController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WithdrawalSummary extends StatelessWidget {
  final w = ScreenUtil().setWidth;
  final h = ScreenUtil().setHeight;
  final sp = ScreenUtil().setSp;
  final accountController = Get.put(AccountDetailsController());
  final transactionController = Get.put(TransactionDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Withdrawal Summary",
          style: TextStyle(
            color: Colors.black,
          ),
        )),
        backgroundColor: Colors.grey.shade50,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          GestureDetector(
            onTap: () {},
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(left: w(10), top: h(10)),
              child: Text(
                "Choose an Account",
                style: TextStyle(fontSize: sp(16), fontWeight: FontWeight.w600),
              )),
          SizedBox(
            height: 20,
          ),
          Obx(
            () => Card(
              margin: EdgeInsets.only(left: w(20), right: w(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                                accountController.accountDetails[0].accountName,
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
                              accountController.accountDetails[0].accountNumber,
                              style: TextStyle(
                                  fontSize: sp(12), color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: w(20), top: h(30)),
                            child: Text(
                              "Change",
                              style: TextStyle(color: Colors.pink),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: h(20), left: w(10)),
            child: Text("Transaction Details:",
                style:
                    TextStyle(fontSize: sp(16), fontWeight: FontWeight.w600)),
          ),
          Obx(
            () => Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: w(20), top: h(20)),
                        child: Text("Available balance"),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: w(20), top: h(20), right: w(10)),
                        child: Text(
                            transactionController.details[0].availableBalance),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: w(20),
                          top: h(20),
                        ),
                        child: Text("Withdrwal Amount"),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: w(20),
                            top: h(20),
                            right: w(10),
                            bottom: h(20)),
                        child: Text(
                            transactionController.details[0].withdrawalAmount),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Obx(() => Card(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: w(20), top: h(20)),
                          child: Text("Total Amount"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: w(20),
                            top: h(20),
                            right: w(10),
                          ),
                          child: Text(
                              transactionController.details[0].totalAmount),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: w(20),
                            top: h(20),
                          ),
                          child: Text("Remaining balance"),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: w(20),
                              top: h(20),
                              right: w(10),
                              bottom: h(20)),
                          child: Text(transactionController
                              .details[0].remainingBalance),
                        )
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: w(10), right: w(10)),
            child: Center(
                child: Text(
              "Confirm",
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(30)),
          ),
        ],
      ),
    );
  }
}
