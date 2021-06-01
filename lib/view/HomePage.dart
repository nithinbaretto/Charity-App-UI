import 'package:charity_app/controller/HomeController.dart';
import 'package:charity_app/view/CharityInformationPage.dart';
import 'package:charity_app/view/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatelessWidget {
  final homecontroller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Positioned(
              child: Container(
                margin: EdgeInsets.only(
                    top: ScreenUtil().setHeight(10),
                    left: ScreenUtil().setWidth(20)),
                height: ScreenUtil().setHeight(50),
                width: ScreenUtil().setWidth(350),
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(25)),
                child: Container(
                    padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(20),
                        right: ScreenUtil().setWidth(50)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none),
                    )),
              ),
            ),
            Positioned(
                top: ScreenUtil().setHeight(10),
                left: ScreenUtil().setWidth(320),
                height: ScreenUtil().setHeight(50),
                width: ScreenUtil().setWidth(50),
                child: Container(
                  child: IconButton(
                    onPressed: () {
                      Get.to(SearchPage());
                    },
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(25)),
                ))
          ],
        ),
        SizedBox(
          height: ScreenUtil().setHeight(10),
        ),
        Expanded(
          child: Obx(() => ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: homecontroller.donationList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(5),
                            right: ScreenUtil().setWidth(5)),
                        width: MediaQuery.of(context).size.width,
                        child: Image.network(
                          homecontroller.donationList[index].photoUrl,
                          height: ScreenUtil().setHeight(230),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Flexible(
                        child: Container(
                          padding:
                              EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => CharityInformationPage());
                            },
                            child: Text(
                              homecontroller.donationList[index].title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(22),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(20),
                            right: ScreenUtil().setWidth(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rs " +
                                  homecontroller.donationList[index].moneyRaised
                                      .toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text("goal:"),
                                Text(homecontroller.donationList[index].goal
                                    .toString())
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(5),
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
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      Flexible(
                        child: Container(
                          padding:
                              EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                          child: Text(
                            homecontroller.donationList[index].description,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(16),
                                color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                padding: EdgeInsets.only(
                                    left: ScreenUtil().setWidth(20)),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.thumb_up,
                                  color: Colors.pink,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: ScreenUtil().setWidth(10)),
                                child: Text(homecontroller
                                    .donationList[index].likes
                                    .toString()),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: ScreenUtil().setHeight(45),
                              width: ScreenUtil().setWidth(120),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.pink,
                              ),
                              child: Center(
                                  child: Text(
                                "Donate",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              )),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                    ],
                  ),
                );
              })),
        )
      ],
    );
  }
}
