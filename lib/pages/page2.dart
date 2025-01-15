import 'package:flutter/material.dart';
import 'package:fullstackfranz_flutter_web/pages/page1.dart';
import 'package:go_router/go_router.dart';

class Page2 extends StatelessWidget {
  static const route = "/page2";
  static const fullRoute = "/page2";
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Page 2",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            context.go(Page1.fullRoute);
          },
          child: const Text("Go to Page 1"),
        ),
      ],
    );
  }
}
