import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Widgets/bottom_nav_bar/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: []);

    return  SafeArea(
        child: Scaffold(
      body: const Center(
        child: Text("ProfileScreen"),
      ),
          bottomNavigationBar: bottomNavigationBar(),
        ),
    );
  }
}
