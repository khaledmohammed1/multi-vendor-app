import 'package:flutter/material.dart';
class OnBoardPage extends StatelessWidget {
  OnBoardPage({
    Key? key,
    required this.boardImage,
    this.boardText,
  }) : super(key: key);
  final String? boardImage;
  String? boardText = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 160,
        ),
        Image.asset(boardImage.toString()),
        const SizedBox(
          height: 40,
        ),
        Text(
          boardText!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}