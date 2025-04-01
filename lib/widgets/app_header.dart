import "package:flutter/material.dart";
import "../models/list_view.dart";

// app header widget
class AppHeader extends StatelessWidget {
  const AppHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Row(
          children: [
            ClipOval(
              child: Image.network(
                  'https://sokozuri-development.lon1.cdn.digitaloceanspaces.com/IMG_1469~2_1~3%20(1)%20copy.jpeg', // replace if you want
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello, Wilfred',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text('Good morning',
                    style: TextStyle(color: mainColor, fontSize: 12))
              ],
            )
          ],
        ));
  }
}
