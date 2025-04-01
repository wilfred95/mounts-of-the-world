import 'package:flutter/material.dart';
import 'package:mounts_of_the_world/widgets/app_search.dart';
import '../widgets/app_header.dart';
import 'package:mounts_of_the_world/widgets/app_mount_list_view.dart';
import 'package:mounts_of_the_world/widgets/app_catagory_list.dart';
import 'package:mounts_of_the_world/widgets/app_bottom_bar.dart';
import '../models/list_view.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Center(
            child: Icon(
              Icons.terrain,
              color: mainColor,
              size: 40,
            ),
          ),
          actions: [SizedBox(width: 40, height: 40)],
          iconTheme: IconThemeData(color: mainColor),
        ),
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.all(30),
            color: mainColor,
            alignment: Alignment.bottomLeft,
            child: Icon(
              Icons.terrain,
              color: Colors.white,
              size: 80,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppHeader(),
            AppSearch(),
            Expanded(
              child: AppMountListView(),
            ),
            AppCategoryList(),
            AppBottomBar(),
          ],
        ));
  }
}

// Use stl to boostrap stateless
