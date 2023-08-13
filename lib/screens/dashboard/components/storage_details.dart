import 'package:dashboard_application/constants.dart';
import 'package:dashboard_application/screens/dashboard/components/chart.dart';
import 'package:dashboard_application/screens/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Storage Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Documents Files",
            amountOffFiles: "1.3 GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            amountOffFiles: "15.3GB",
            numOfFiles: 1328,
            title: "Media Files",
            svgSrc: "assets/icons/media.svg",
          ),
          StorageInfoCard(
            amountOffFiles: "1.3GB",
            numOfFiles: 1328,
            title: "Other Files",
            svgSrc: "assets/icons/folder.svg",
          ),
          StorageInfoCard(
            amountOffFiles: "1.3GB",
            numOfFiles: 140,
            title: "Unknown",
            svgSrc: "assets/icons/unknown.svg",
          )
        ],
      ),
    );
  }
}
