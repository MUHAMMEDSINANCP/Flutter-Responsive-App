import 'package:flutter/material.dart';

import '../widget/login_widget.dart';
import '../widget/signup_widget.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Notification", icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
        ],
      ),
      backgroundColor: Colors.orange,
      body: Container(
        padding: const EdgeInsets.all(20),
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoginWidget(
              size: size.width,
            ),
            const SizedBox(
              height: 20,
            ),
            SignupWidget(size: size.width)
          ],
        ),
      ),
    );
  }
}
