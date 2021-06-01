import 'package:charity_app/controller/HomeController.dart';
import 'package:charity_app/view/CharityInformationPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class FavouritePage extends StatelessWidget {
  final w = ScreenUtil().setWidth;
  final h = ScreenUtil().setHeight;
  final sp = ScreenUtil().setSp;
  final homecontroller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    print(homecontroller.donationList.length);
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: h(40),
                width: w(150),
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Text(
                  "Helped",
                  style: TextStyle(
                      color: Colors.white,
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
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text(
                    "Saved",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: sp(16),
                        fontWeight: FontWeight.w600),
                  ))),
            ],
          ),
          SizedBox(
            height: h(10),
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
                            padding: EdgeInsets.only(
                                left: ScreenUtil().setWidth(20)),
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
                                    homecontroller
                                        .donationList[index].moneyRaised
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
                            padding: EdgeInsets.only(
                                left: ScreenUtil().setWidth(20)),
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
      ),
    );
  }
}
