import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Widgets/bottom_nav_bar/bottom_nav_bar.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: []);
    return  SafeArea(
        child: Scaffold(
          body: const Center(
            child: Text("CartScreen"),
          ),
          bottomNavigationBar: bottomNavigationBar(),
        ),
    );
  }
}
