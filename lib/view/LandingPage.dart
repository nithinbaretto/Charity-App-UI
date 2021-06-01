import 'package:charity_app/view/Request.dart';
import 'package:charity_app/view/FavouritePage.dart';
import 'package:charity_app/view/HomePage.dart';
import 'package:charity_app/view/OtherPage.dart';
import 'package:charity_app/view/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _index = 0;
  final List<Widget> _children = [
    HomePage(),
    FavouritePage(),
    RequestPage(),
    ProfilePage(),
    OtherPage()
  ];

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white.withOpacity(0),
          elevation: 0,
          title: Text(
            "Charity Foundation",
            style: GoogleFonts.ubuntu(
              color: Colors.blue.shade900,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            Container(
                padding: EdgeInsets.only(right: ScreenUtil().setWidth(10)),
                child: IconButton(
                  icon: Icon(Icons.map),
                  onPressed: () {},
                )),
            Container(
                padding: EdgeInsets.only(right: ScreenUtil().setWidth(10)),
                child: Icon(Icons.notifications_none)),
          ],
        ),
        body: _children[_index],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.blue.shade50,
            selectedItemColor: Colors.blue.shade700,
            unselectedItemColor: Colors.black,
            onTap: (val) {
              setState(() {
                _index = val;
              });
            },
            currentIndex: _index,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                tooltip: "Home",
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.grey,
                  ),
                  //   title: Text("Favourite",
                  //       style:
                  //           GoogleFonts.ubuntu(color: Colors.black, fontSize: 12)),

                  label: "Favourite"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.connect_without_contact,
                    color: Colors.grey,
                  ),
                  // title: Text("Connections",
                  //     style: GoogleFonts.ubuntu(
                  //         color: Colors.black, fontSize: 12))
                  label: "Request"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  // title: Text("Profile",
                  //     style: GoogleFonts.ubuntu(
                  //         color: Colors.black, fontSize: 12))
                  label: "Profile"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.auto_awesome_mosaic_rounded,
                    color: Colors.grey,
                  ),
                  // title: Text("others",
                  //     style: GoogleFonts.ubuntu(
                  //         color: Colors.black, fontSize: 12))
                  label: "Others"),
            ],
          ),
        ));
  }
}
