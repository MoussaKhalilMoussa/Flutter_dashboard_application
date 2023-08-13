import 'package:dashboard_application/constants.dart';
import 'package:dashboard_application/models/recent_file.dart';
import 'package:dashboard_application/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({super.key});

  @override
  Widget build(BuildContext context) {
    //final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              //columnSpacing:Responsive.isMobile(context) ? 30 : double.infinity,
              columns: const [
                DataColumn(label: Text("File Name")),
                DataColumn(label: Text("Date")),
                DataColumn(label: Text("Size")),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(cells: [
    DataCell(
      Row(
        children: [
          SvgPicture.asset(
            fileInfo.icon!,
            height: 30,
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(fileInfo.title!),
          ),
        ],
      ),
    ),
    DataCell(Text(fileInfo.date!)),
    DataCell(Text(fileInfo.size!)),
  ]);
}
