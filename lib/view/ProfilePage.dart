import 'package:charity_app/controller/AccountDetailsController.dart';
import 'package:charity_app/controller/ProfileController.dart';
import 'package:charity_app/view/MyAdress.dart';
import 'package:charity_app/view/UpdatePersonalDetails.dart';
import 'package:charity_app/view/WithdrawalMoney.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  final profileController = Get.put(ProfileController());
  final accountController = Get.put(AccountDetailsController());
  final w = ScreenUtil().setWidth;
  final h = ScreenUtil().setHeight;
  final sp = ScreenUtil().setSp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Obx(
              () => Container(
                height: ScreenUtil().setHeight(120),
                width: ScreenUtil().setWidth(MediaQuery.of(context).size.width),
                decoration: BoxDecoration(color: Colors.blue.shade50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: ScreenUtil().setHeight(50),
                          width: ScreenUtil().setWidth(50),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Image.network(profileController
                              .profileValues[0].basicInformation[0]),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: ScreenUtil().setHeight(40),
                                left: ScreenUtil().setWidth(10)),
                            child: Obx(
                              () => Text(
                                profileController
                                    .profileValues[0].basicInformation[1],
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setHeight(5),
                                      left: ScreenUtil().setWidth(10)),
                                  child: Icon(
                                    Icons.mail_outline,
                                    size: sp(15),
                                  )),
                              Flexible(
                                  child: Container(
                                width: w(170),
                                margin: EdgeInsets.only(
                                    top: ScreenUtil().setHeight(5),
                                    left: ScreenUtil().setWidth(5)),
                                child: Text(
                                  profileController
                                      .profileValues[0].basicInformation[2],
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setHeight(5),
                                      left: ScreenUtil().setWidth(5)),
                                  child: Icon(
                                    Icons.phone,
                                    size: sp(15),
                                  )),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: ScreenUtil().setHeight(5),
                                      left: ScreenUtil().setWidth(5)),
                                  child: Text(
                                    profileController
                                        .profileValues[0].basicInformation[3],
                                    overflow: TextOverflow.ellipsis,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(UpdatePersonalDetails());
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: h(30)),
                        height: h(20),
                        width: w(20),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(25)),
                        child: Icon(
                          Icons.edit,
                          size: sp(16),
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            Obx(
              () => Card(
                child: Container(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                  height: ScreenUtil().setHeight(70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: ScreenUtil().setHeight(10),
                                bottom: ScreenUtil().setWidth(5)),
                            child: Text(
                              "Balance",
                              style:
                                  TextStyle(fontSize: ScreenUtil().setSp(13)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: ScreenUtil().setHeight(10)),
                            child: Text(
                                profileController
                                    .profileValues[0].basicInformation[4],
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.only(
                                  right: ScreenUtil().setWidth(10),
                                  bottom: ScreenUtil().setHeight(5)),
                              child: Text(
                                "Deposit",
                                style: TextStyle(
                                    color: Colors.pink,
                                    fontWeight: FontWeight.w600,
                                    fontSize: ScreenUtil().setSp(13)),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(WithdrawalMoney());
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                right: ScreenUtil().setWidth(10),
                              ),
                              child: Text(
                                "Withdrawal",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: ScreenUtil().setSp(13)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Obx(
              () => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        margin: EdgeInsets.only(
                          left: ScreenUtil().setWidth(10),
                        ),
                        child: Container(
                          height: ScreenUtil().setHeight(60),
                          width: ScreenUtil().setHeight(180),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding:
                                      EdgeInsets.only(top: h(10), left: w(10)),
                                  child: Text(
                                    "Donate Balance",
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: h(5), left: w(10)),
                                      child: Text(
                                        "Total:",
                                        style: TextStyle(fontSize: sp(11)),
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: h(5), left: w(5)),
                                      child: Text(
                                        profileController
                                            .profileValues[0].donatedBalance[0],
                                        style: TextStyle(fontSize: sp(11)),
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: h(5), left: w(5)),
                                      child: Text(
                                        "Total Points:",
                                        style: TextStyle(fontSize: sp(11)),
                                      )),
                                  Flexible(
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(top: h(5), left: (5)),
                                      child: Text(
                                        profileController
                                            .profileValues[0].donatedBalance[1],
                                        style: TextStyle(fontSize: sp(11)),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(
                          left: w(10),
                        ),
                        child: Container(
                          height: h(60),
                          width: w(185),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding:
                                      EdgeInsets.only(top: h(10), left: w(10)),
                                  child: Text(
                                    "Charity",
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: h(5), left: w(10)),
                                      child: Text(
                                        "Total:",
                                        style: TextStyle(fontSize: sp(11)),
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: h(5), left: w(5)),
                                      child: Text(
                                        profileController
                                            .profileValues[0].charityBalance[0],
                                        style: TextStyle(fontSize: sp(11)),
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: h(5), left: w(5)),
                                      child: Text(
                                        "Total Points:",
                                        style: TextStyle(fontSize: sp(11)),
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: h(5), left: w(5)),
                                      child: Text(
                                        profileController
                                            .profileValues[0].charityBalance[1],
                                        style: TextStyle(fontSize: sp(11)),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        margin: EdgeInsets.only(
                          left: w(10),
                        ),
                        child: Container(
                          height: h(60),
                          width: w(180),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding: EdgeInsets.only(
                                    top: h(10),
                                    left: w(10),
                                  ),
                                  child: Text(
                                    profileController.profileValues[0]
                                        .myDonations[0].donationName,
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: h(5), left: w(10)),
                                      child: Text(
                                        "Total:",
                                        style: TextStyle(fontSize: sp(11)),
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: h(5), left: w(5)),
                                      child: Text(
                                        profileController.profileValues[0]
                                            .myDonations[0].donationAmount,
                                        style: TextStyle(fontSize: sp(11)),
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: h(5), left: w(5)),
                                      child: Text(
                                        "Total Points:",
                                        style: TextStyle(fontSize: sp(11)),
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: h(5), left: w(5)),
                                      child: Text(
                                        profileController.profileValues[0]
                                            .myDonations[0].donationPoint,
                                        style: TextStyle(fontSize: sp(11)),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(left: w(10), bottom: h(10)),
                        child: Container(
                          height: h(60),
                          width: w(185),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding:
                                      EdgeInsets.only(top: h(10), left: w(10)),
                                  child: Text(
                                    profileController.profileValues[0]
                                        .donationsToMyCharity[0].donarName,
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: h(5), left: w(10)),
                                      child: Text(
                                        "Total:",
                                        style: TextStyle(fontSize: sp(11)),
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: h(5), left: w(5)),
                                      child: Text(
                                        profileController
                                            .profileValues[0]
                                            .donationsToMyCharity[0]
                                            .donationAmount,
                                        style: TextStyle(fontSize: sp(11)),
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(top: 5, left: 5),
                                      child: Text(
                                        "Total Points:",
                                        style: TextStyle(fontSize: 11),
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(top: 5, left: 5),
                                      child: Text(
                                        profileController
                                            .profileValues[0]
                                            .donationsToMyCharity[0]
                                            .donationPoint,
                                        style: TextStyle(fontSize: 11),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
                child: Text(
                  "See More",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Container(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
              child: Text(
                "Payment Methods",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(16),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Obx(
              () => Card(
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
                              top: 10,
                              bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Icon(
                              Icons.food_bank,
                              size: 36,
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
                                width: 180,
                                margin: EdgeInsets.only(
                                    left: ScreenUtil().setWidth(10),
                                    top: ScreenUtil().setHeight(15)),
                                child: Text(
                                  accountController
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
                                accountController
                                    .accountDetails[0].accountNumber,
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(25)),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 18,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 20,
                            width: 20,
                            margin: EdgeInsets.only(right: 10),
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
            ),
            SizedBox(
              height: 10,
            ),
            Obx(
              () => Card(
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
                              top: 10,
                              bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Icon(
                              Icons.food_bank,
                              size: 36,
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
                                  accountController
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
                                accountController
                                    .accountDetails[1].accountNumber,
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(25)),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 18,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 20,
                            width: 20,
                            margin: EdgeInsets.only(right: 10),
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
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
                child: Text(
                  "See More",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
              child: Text(
                "Adress",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(16),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Obx(
              () => Card(
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
                              top: 10,
                              bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Icon(
                              Icons.home,
                              size: 36,
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
                                width: 180,
                                margin: EdgeInsets.only(
                                    left: ScreenUtil().setWidth(10),
                                    top: ScreenUtil().setHeight(15)),
                                child: Text(
                                  "Home Adress",
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
                                accountController
                                    .accountDetails[0].accountNumber,
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(25)),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 18,
                            )),
                        SizedBox(
                          width: w(10),
                        ),
                        Container(
                            height: h(20),
                            width: w(20),
                            margin: EdgeInsets.only(right: w(10)),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(25)),
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                              size: w(18),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h(10),
            ),
            Obx(
              () => Card(
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
                              Icons.shop_rounded,
                              size: w(36),
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
                                width: w(180),
                                margin: EdgeInsets.only(
                                    left: ScreenUtil().setWidth(10),
                                    top: ScreenUtil().setHeight(15)),
                                child: Text(
                                  accountController
                                      .accountDetails[1].accountName,
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
                                accountController
                                    .accountDetails[1].accountNumber,
                                style: TextStyle(
                                    fontSize: sp(12), color: Colors.grey),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            height: h(20),
                            width: w(20),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(25)),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: sp(18),
                            )),
                        SizedBox(
                          width: w(10),
                        ),
                        Container(
                            height: h(20),
                            width: w(20),
                            margin: EdgeInsets.only(right: w(10)),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(25)),
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                              size: sp(18),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h(10),
            ),
            GestureDetector(
              onTap: () {
                Get.to(MyAdress());
              },
              child: Container(
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(10),
                    bottom: ScreenUtil().setHeight(20)),
                child: Text(
                  "See More",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
