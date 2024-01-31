import 'package:flutter/material.dart';

import '../widget/login_widget.dart';
import '../widget/signup_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        padding: const EdgeInsets.all(20),
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Home"),
                Text("Notification"),
                Text("Cart"),
                Text("Profile"),
                Text("Settings"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: LoginWidget(
                    size: size.width,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: SignupWidget(size: size.width),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
