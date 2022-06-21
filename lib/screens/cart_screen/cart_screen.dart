import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: []);
    return  const SafeArea(
        child: Scaffold(
          body:  Center(
            child: Text("CartScreen"),
          ),
        ),
    );
  }
}
