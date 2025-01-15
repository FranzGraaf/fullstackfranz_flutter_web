import 'package:flutter/material.dart';

class ErrorPage1 extends StatelessWidget {
  const ErrorPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Error Page 1",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
