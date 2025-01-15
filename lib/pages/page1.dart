import 'package:flutter/material.dart';
import 'package:fullstackfranz_flutter_web/pages/page2.dart';
import 'package:go_router/go_router.dart';

class Page1 extends StatelessWidget {
  static const route = "/";
  static const fullRoute = "/";
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Page 1",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            context.go(Page2.fullRoute);
          },
          child: const Text("Go to Page 2"),
        ),
      ],
    );
  }
}
