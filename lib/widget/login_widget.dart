// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  final double? size;
  const LoginWidget({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    print(size);
    return Container(
      padding: EdgeInsets.all(size! / 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(fontSize: (size! / 40)),
          ),
          const TextField(),
          const TextField(),
        ],
      ),
    );
  }
}
