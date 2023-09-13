import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/Recentfile.dart';
class RecentFiles extends StatelessWidget {
  const RecentFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Data Table',style: Theme.of(context).textTheme.subtitle1,),
        SizedBox(
          width: double.infinity,
          child: DataTable(
            columnSpacing: defaultPadding,
            columns: [
              DataColumn(
                label: Text("File Name"),
              ),
              DataColumn(
                label: Text("Date"),
              ),
              DataColumn(
                label: Text("Size"),
              ),

            ],
            rows: List.generate(
              demoRecentFiles.length,
                  (index) {
                final RecentFile fileInfo = demoRecentFiles[index];
                return DataRow(
                  cells: [
                    DataCell(
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            child: Text(fileInfo.title!),
                          ),
                        ],
                      ),
                    ),
                    DataCell(Text(fileInfo.date!)),
                    DataCell(Text(fileInfo.size!)),
                  ],
                );
              },
            ),

          ),
        ),
      ],
    );
  }
}