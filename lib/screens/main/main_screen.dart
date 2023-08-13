import 'package:dashboard_application/controllers/menu_App_controller.dart';
import 'package:dashboard_application/responsive.dart';
import 'package:dashboard_application/screens/dashboard/dashboard_screen.dart';
import 'package:dashboard_application/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // we want the menu only for large screen
          if (Responsive.isDesktop(context))
            const Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu()),
          const Expanded(
            // it takes 5/6 part of the screen
            flex: 5,
            child: DashboardScreen(),
          ),
        ],
      )),
    );
  }
}
