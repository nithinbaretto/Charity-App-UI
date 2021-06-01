import 'package:charity_app/controller/FilterPage.dart';
import 'package:charity_app/view/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class FilterPage extends StatelessWidget {
  final filterController = Get.put(FilterPageController());

  @override
  Widget build(BuildContext context) {
    print("hfhhf");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 0,
        title: Center(
          child: Text(
            "Filter",
            style: TextStyle(color: Colors.black),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
                child: Text("Request Category"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      filterController.requestCat("Homeless");
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: ScreenUtil().setWidth(10),
                          top: ScreenUtil().setHeight(30)),
                      height: ScreenUtil().setHeight(50),
                      width: ScreenUtil().setWidth(100),
                      decoration: BoxDecoration(
                          color: filterController.requestCategory.string ==
                                  "Homeless"
                              ? Colors.pink
                              : Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Text(
                        "Homeless",
                        style: TextStyle(
                          color: filterController.requestCategory.string ==
                                  "Homeless"
                              ? Colors.white
                              : Colors.black,
                        ),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      filterController.requestCat("Food");
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: ScreenUtil().setWidth(10),
                          top: ScreenUtil().setHeight(30)),
                      height: ScreenUtil().setHeight(50),
                      width: ScreenUtil().setWidth(100),
                      decoration: BoxDecoration(
                          color:
                              filterController.requestCategory.string == "Food"
                                  ? Colors.pink
                                  : Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Text("Food",
                              style: TextStyle(
                                color:
                                    filterController.requestCategory.string ==
                                            "Food"
                                        ? Colors.white
                                        : Colors.black,
                              ))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      filterController.requestCat("Safe Water");
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: ScreenUtil().setWidth(10),
                          right: ScreenUtil().setWidth(10),
                          top: ScreenUtil().setHeight(30)),
                      height: ScreenUtil().setHeight(50),
                      width: ScreenUtil().setWidth(100),
                      decoration: BoxDecoration(
                          color: filterController.requestCategory.string ==
                                  "Safe Water"
                              ? Colors.pink
                              : Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Text("Safe Water",
                              style: TextStyle(
                                color:
                                    filterController.requestCategory.string ==
                                            "Safe Water"
                                        ? Colors.white
                                        : Colors.black,
                              ))),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      filterController.requestCat("Poor");
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: ScreenUtil().setWidth(10),
                          top: ScreenUtil().setHeight(30)),
                      height: ScreenUtil().setHeight(50),
                      width: ScreenUtil().setWidth(100),
                      decoration: BoxDecoration(
                          color:
                              filterController.requestCategory.string == "Poor"
                                  ? Colors.pink
                                  : Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Text("Poor",
                              style: TextStyle(
                                color:
                                    filterController.requestCategory.string ==
                                            "Poor"
                                        ? Colors.white
                                        : Colors.black,
                              ))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      filterController.requestCat("School Fees");
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: ScreenUtil().setWidth(10),
                          top: ScreenUtil().setHeight(30)),
                      height: ScreenUtil().setHeight(50),
                      width: ScreenUtil().setWidth(100),
                      decoration: BoxDecoration(
                          color: filterController.requestCategory.string ==
                                  "School Fees"
                              ? Colors.pink
                              : Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Text("School Fees",
                              style: TextStyle(
                                color:
                                    filterController.requestCategory.string ==
                                            "School Fees"
                                        ? Colors.white
                                        : Colors.black,
                              ))),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(20),
                    top: ScreenUtil().setHeight(20)),
                child: Text(
                  "Price",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(15),
                    right: ScreenUtil().setWidth(10)),
                child: LinearPercentIndicator(
                  progressColor: Colors.pink,
                  percent: 0.5,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(20),
                    top: ScreenUtil().setHeight(20)),
                child: Text(
                  "Ordering",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      filterController.orderingCat("Request Date");
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: ScreenUtil().setWidth(10),
                          top: ScreenUtil().setHeight(30)),
                      height: ScreenUtil().setHeight(50),
                      width: ScreenUtil().setWidth(120),
                      decoration: BoxDecoration(
                          color:
                              filterController.ordering.string == "Request Date"
                                  ? Colors.pink
                                  : Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Text("Request Date",
                              style: TextStyle(
                                color: filterController.ordering.string ==
                                        "Request Date"
                                    ? Colors.white
                                    : Colors.black,
                              ))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      filterController.orderingCat("Helped Percentage");
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: ScreenUtil().setWidth(10),
                          top: ScreenUtil().setHeight(30)),
                      height: ScreenUtil().setHeight(50),
                      width: ScreenUtil().setWidth(160),
                      decoration: BoxDecoration(
                          color: filterController.ordering.string ==
                                  "Helped Percentage"
                              ? Colors.pink
                              : Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Text("Helped Percentage",
                              style: TextStyle(
                                color: filterController.ordering.string ==
                                        "Helped Percentage"
                                    ? Colors.white
                                    : Colors.black,
                              ))),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      filterController.orderingCat("Deadline");
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: ScreenUtil().setWidth(10),
                          top: ScreenUtil().setHeight(30)),
                      height: ScreenUtil().setHeight(50),
                      width: ScreenUtil().setWidth(120),
                      decoration: BoxDecoration(
                          color: filterController.ordering.string == "Deadline"
                              ? Colors.pink
                              : Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Text("Deadline",
                              style: TextStyle(
                                color: filterController.ordering.string ==
                                        "Deadline"
                                    ? Colors.white
                                    : Colors.black,
                              ))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      filterController.orderingCat("Amount");
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: ScreenUtil().setWidth(10),
                          top: ScreenUtil().setHeight(30)),
                      height: ScreenUtil().setHeight(50),
                      width: ScreenUtil().setWidth(120),
                      decoration: BoxDecoration(
                          color: filterController.ordering.string == "Amount"
                              ? Colors.pink
                              : Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Text("Amount",
                              style: TextStyle(
                                color:
                                    filterController.ordering.string == "Amount"
                                        ? Colors.white
                                        : Colors.black,
                              ))),
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(SearchPage());
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            // left: ScreenUtil().setWidth(20),
                            top: ScreenUtil().setHeight(40)),
                        height: ScreenUtil().setHeight(50),
                        width: ScreenUtil().setWidth(300),
                        child: Center(
                            child: Text(
                          "Show Result",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        filterController.requestCat("Homeless");
                        filterController.orderingCat("Request Date");
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            // left: ScreenUtil().setWidth(20),
                            top: ScreenUtil().setHeight(20)),
                        height: ScreenUtil().setHeight(50),
                        width: ScreenUtil().setWidth(300),
                        child: Center(
                            child: Text(
                          "Reset",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
