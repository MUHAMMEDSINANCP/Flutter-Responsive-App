import 'package:flutter/material.dart';

import '../widget/login_widget.dart';
import '../widget/signup_widget.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.blue,
      body: Container(
        padding: const EdgeInsets.all(20),
        height: size.height,
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NavigationRail(
                backgroundColor: Colors.transparent,
                destinations: const [
                  NavigationRailDestination(
                      icon: Icon(Icons.home), label: Text("Home")),
                  NavigationRailDestination(
                      icon: Icon(Icons.notifications),
                      label: Text("Notification")),
                  NavigationRailDestination(
                      icon: Icon(Icons.person), label: Text("Profile"))
                ],
                selectedIndex: 0),
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
      ),
    );
  }
}
