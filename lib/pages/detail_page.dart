import "package:flutter/material.dart";
import "package:mounts_of_the_world/models/list_view.dart";
import "package:mounts_of_the_world/widgets/datail_bottom_action.dart";
import 'package:mounts_of_the_world/widgets/detail_rating.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.mount});

  final MountModel mount;

  @override
  Widget build(BuildContext context) {
    var selectedItems = mount;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(selectedItems.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7)
                      ], begin: Alignment.center, end: Alignment.bottomCenter),
                    ),
                  ),
                ),
                Positioned.fill(
                  bottom: 30,
                  left: 30,
                  right: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          selectedItems.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          selectedItems.location,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ]),
                ),
                AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  iconTheme: IconThemeData(color: Colors.white),
                  title: Center(
                    child: Icon(Icons.terrain, color: Colors.white, size: 40),
                  ),
                  actions: [
                    Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.pending,
                          color: Colors.white,
                          size: 30,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              DetailsRatingBar(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: Text(
                        'About ${selectedItems.name}',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: Text(
                        selectedItems.description,
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              DetailsBottomActions(),
            ],
          ),
        ),
      ]),
    );
  }
}
