import 'package:flutter/material.dart';
import 'package:mounts_of_the_world/pages/landing_page.dart';
import '../models/list_view.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      // ignore: use_build_context_synchronously
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const LandingPage()),
      );
    });
    return Container(
      color: mainColor,
      child: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Icon(Icons.terrain, size: 90, color: Colors.white),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                margin: EdgeInsets.only(bottom: 80),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )))
      ]),
    );
  }
}
