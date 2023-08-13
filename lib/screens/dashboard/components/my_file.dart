
import 'package:dashboard_application/constants.dart';
import 'package:dashboard_application/models/my_file.dart';
import 'package:dashboard_application/responsive.dart';
import 'package:dashboard_application/screens/dashboard/components/file_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/placeholder.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
  final Size _size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical:
                      defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
              ),
              onPressed: () {},
              label: const Text("Add New"),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRation: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: const FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRation: _size.width < 1400 ? 1.1: 1.4,
          ),
        )
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRation;

  const FileInfoCardGridView({
    Key? key,
    this.childAspectRation = 1,
    this.crossAxisCount = 4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRation,
      ),
      itemCount: demoMyFiles.length,
      itemBuilder: (context, index) => FileInfoCard(info: demoMyFiles[index]),
    );
  }
}
