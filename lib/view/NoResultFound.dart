import 'package:flutter/material.dart';

Widget noResultFound() {
  return Center(
    child: Column(children: [
      Icon(Icons.search),
      Container(
        child: Text(
          "No Result Found",
          style: TextStyle(fontSize: 18),
        ),
      ),
      Container(
        child: Text(
          "We can't find any request matching your search",
          style: TextStyle(color: Colors.grey),
        ),
      )
    ]),
  );
}
