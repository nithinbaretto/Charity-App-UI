import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:charity_app/controller/CharityInformationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CharityInformationPage extends StatelessWidget {
  final charityController = Get.put(CharityInformationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Icon(Icons.share),
          SizedBox(width: 20),
          Icon(Icons.favorite_outline),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Obx(
              () => Positioned(
                child: CarouselSlider(
                  options: CarouselOptions(height: 400),
                  items: charityController.information[0].images
                      .map((e) => Builder(builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(color: Colors.amber),
                              child: Image.network(
                                e,
                                fit: BoxFit.cover,
                              ),
                            );
                          }))
                      .toList(),
                ),
              ),
            ),
            Positioned(
              top: 370.0,
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text("Catelog :"),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Food",
                            style: TextStyle(color: Colors.pink),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Container(
                                  width: 260,
                                  child: Text(
                                    charityController.information[0].title,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  )),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                    padding: EdgeInsets.only(top: 5, right: 20),
                                    child: Text("Goal")),
                                Container(
                                    padding: EdgeInsets.only(top: 5, right: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Rs ",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          charityController.information[0].goal,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => Row(
                          children: [
                            Icon(
                              Icons.person_rounded,
                              size: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                                child: Text(
                              charityController.information[0].name,
                              overflow: TextOverflow.ellipsis,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.call,
                              size: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(charityController.information[0].contact),
                            Container(
                              height: 30,
                              width: 100,
                              margin: EdgeInsets.only(left: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.pink),
                              child: Center(child: Text("Ended")),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Purpose",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => Flexible(
                            child: Container(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(
                                  charityController.information[0].purpose,
                                  style: TextStyle(height: 1.5),
                                ))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Adress",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => Row(
                          children: [
                            Text("Village:"),
                            SizedBox(
                              width: 5,
                            ),
                            Text(charityController
                                .information[0].adress[0].village),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Commune:"),
                            SizedBox(
                              width: 5,
                            ),
                            Text(charityController
                                .information[0].adress[0].commune)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => Row(
                          children: [
                            Text("District:"),
                            SizedBox(
                              width: 5,
                            ),
                            Text(charityController
                                .information[0].adress[0].district),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Province:"),
                            SizedBox(
                              width: 5,
                            ),
                            Text(charityController
                                .information[0].adress[0].province)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
