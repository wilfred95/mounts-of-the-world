import "package:flutter/material.dart";
import '../models/list_view.dart';


// app search widget
class AppSearch extends StatelessWidget {
  const AppSearch({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Discover',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25)),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 10),
                      Text('Search', style: TextStyle(color: Colors.grey)),
                    ],
                  )),
            ),
            Container(
                margin: EdgeInsets.only(left: 10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.tune, color: Colors.white))
          ],
        ),
      ]),
    );
  }
}