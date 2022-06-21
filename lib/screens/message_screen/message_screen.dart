import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: []);

    return  const SafeArea(
        child: Scaffold(
          body:  Center(
            child: Text("MessageScreen"),
          ),
        ),
    );
  }
}
