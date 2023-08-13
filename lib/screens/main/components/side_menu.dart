import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press: () {},
          ),
          DrawerListTile(
            press: () {},
            svgSrc: "assets/icons/menu_tran.svg",
            title: "Transaction",
          ),
          DrawerListTile(
            press: () {},
            svgSrc: "assets/icons/menu_task.svg",
            title: "Task",
          ),
          DrawerListTile(
            press: () {},
            svgSrc: "assets/icons/menu_doc.svg",
            title: "Documents",
          ),
          DrawerListTile(
            press: () {},
            svgSrc: "assets/icons/menu_store.svg",
            title: "Store",
          ),
          DrawerListTile(
            press: () {},
            svgSrc: "assets/icons/menu_notification.svg",
            title: "Notification",
          ),
          DrawerListTile(
            press: () {},
            svgSrc: "assets/icons/menu_profile.svg",
            title: "Profile",
          ),
          DrawerListTile(
            press: () {},
            svgSrc: "assets/icons/menu_setting.svg",
            title: "Settings",
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title, svgSrc;
  final VoidCallback press;

  const DrawerListTile({
    Key? key,
    required this.press,
    required this.svgSrc,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: press,
        horizontalTitleGap: 0.0,
        leading: SvgPicture.asset(
          svgSrc,
          colorFilter: const ColorFilter.mode(
            Colors.white54,
            BlendMode.srcIn,
          ),
          height: 16,
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white54),
        ));
  }
}
