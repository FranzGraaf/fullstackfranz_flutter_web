import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page3 extends StatelessWidget {
  static const route = "/page3";
  static const fullRoute = "/page2/page3";
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Page 3",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            context.pop();
          },
          child: const Text("Go back"),
        ),
      ],
    );
  }
}
