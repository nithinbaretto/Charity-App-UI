import 'package:charity_app/controller/RequestController.dart';
import 'package:charity_app/view/createHelp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RequestPage extends StatelessWidget {
  final w = ScreenUtil().setWidth;
  final h = ScreenUtil().setHeight;
  final sp = ScreenUtil().setSp;
  final requestController = Get.put(RequestController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: w(10)),
                child: Text("Total Request items:"),
              ),
              Container(
                padding: EdgeInsets.only(left: w(10)),
                child: Text(
                    requestController.requestInformation.length.toString()),
              )
            ],
          ),
          SizedBox(
            height: h(10),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: requestController.requestInformation.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: h(20), left: w(20)),
                        height: h(80),
                        width: h(80),
                        color: Colors.pink,
                        child: Image.network(
                          requestController.requestInformation[index].photourl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Container(
                                padding: EdgeInsets.only(left: w(10)),
                                child: Text(
                                  requestController.requestInformation[0].title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Rs " +
                                        requestController
                                            .requestInformation[index]
                                            .raisedAmount
                                            .toString(),
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text("goal:"),
                                    Container(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Text(requestController
                                          .requestInformation[index].goal
                                          .toString()),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: w(10), top: h(10)),
                              child: LinearPercentIndicator(
                                progressColor: Colors.pink,
                                percent: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => CreateHelp());
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
