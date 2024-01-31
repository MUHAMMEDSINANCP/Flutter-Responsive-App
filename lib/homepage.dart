import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/desktop/desktop_layout.dart';
import 'package:flutter_responsive_app/tablet/tablet_layout.dart';

import 'mobile/mobile_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 950) {
        return const DesktopLayout();
      } else if (constraints.maxWidth > 600) {
        return const TabletLayout();
      } else {
        return const MobileLayout();
      }
    });
  }
}
