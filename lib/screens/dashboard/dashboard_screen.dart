import 'package:dashboard_application/constants.dart';
import 'package:dashboard_application/models/recent_file.dart';
import 'package:dashboard_application/responsive.dart';
import 'package:dashboard_application/screens/dashboard/components/header.dart';
import 'package:dashboard_application/screens/dashboard/components/my_file.dart';
import 'package:dashboard_application/screens/dashboard/components/recent_files.dart';
import 'package:dashboard_application/screens/dashboard/components/storage_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      primary: false,
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          const Header(),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    const MyFiles(),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const RecentFiles(),
                    if (Responsive.isMobile(context))
                      const SizedBox(
                        width: defaultPadding,
                      ),
                    if (Responsive.isMobile(context)) const StorageDetails(),
                  ],
                ),
              ),
              if (!Responsive.isMobile(context))
                const SizedBox(
                  width: defaultPadding,
                ),
              if (!Responsive.isMobile(context))
                const Expanded(flex: 2, child: StorageDetails())
            ],
          )
        ],
      ),
    ));
  }
}
