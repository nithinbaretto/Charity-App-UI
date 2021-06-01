import 'package:charity_app/controller/SearchController.dart';
import 'package:charity_app/view/FilterPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchPage extends StatelessWidget {
  final searchController = Get.put(SearchController());
  @override
  Widget build(BuildContext context) {
    print(searchController.searchList[0].history.length);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade50,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Center(
            child: Text(
              "Search",
              style: TextStyle(color: Colors.black),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(FilterPage());
                },
                icon: Icon(Icons.filter_list))
          ],
        ),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                          // Get.to(SearchPage());
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
            Obx(
              () => Expanded(
                child: ListView.builder(
                    itemCount: searchController.searchList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(
                          left: ScreenUtil().setWidth(20),
                          bottom: ScreenUtil().setHeight(20),
                          top: ScreenUtil().setHeight(20),
                        ),
                        child: Column(
                          children: [
                            for (int i = 0;
                                i <
                                    searchController
                                        .searchList[0].history.length;
                                i++)
                              Row(
                                children: [
                                  Icon(
                                    Icons.history,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(10),
                                  ),
                                  Flexible(
                                    child: Text(
                                      searchController
                                          .searchList[index].history[i],
                                      style: TextStyle(
                                          fontSize: ScreenUtil().setSp(15)),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(height: ScreenUtil().setHeight(50))
                                ],
                              ),
                          ],
                        ),
                      );
                    }),
              ),
            )
          ]),
        ));
  }
}
