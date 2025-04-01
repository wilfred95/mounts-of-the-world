import "package:flutter/material.dart";
import '../models/list_view.dart';
import 'package:mounts_of_the_world/pages/detail_page.dart';

// app mount list view widget
class AppMountListView extends StatelessWidget {
  const AppMountListView({super.key});
  @override
  Widget build(BuildContext context) {
    // print('Number of items in mount list: ${mountItems.length}');
    return Container(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: mountItems.length,
          itemBuilder: (context, index) {
            MountModel currentMount = mountItems[index];

            return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(mount: currentMount),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(10),
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(currentMount.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(currentMount.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text(currentMount.location,
                            style: TextStyle(color: Colors.white))
                      ]),
                ));
          }),
    );
  }
}
