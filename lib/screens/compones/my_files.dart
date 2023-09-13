

import 'package:flutter/material.dart';

import 'package:respnosive/screens/compones/recent_file.dart';

import '../../../constants.dart';
import '../../models/My_files.dart';

import '../../responsive.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size _size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                  //  vertical:
                  //  defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add New"),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        // [Mobile]
        // crossAxisCount: _size.width < 650 ? 2 : 4
        // childAspectRatio: _size.width < 650 ? 1.3 : 1,
        // [Desktop]
        // childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
        Responsive(mobile: Fileinfogridcard(
          ccrossAxisCount:_size.width<650 ?2:4,
          chilAspration:_size.width < 650 ? 1:1.3,),desktop: Fileinfogridcard(
          ccrossAxisCount:_size.width<1400 ?2:4,
          chilAspration:_size.width<1400 ?1:4,),tablet: Fileinfogridcard(
            ccrossAxisCount:_size.width<1400 ?4:2,
            chilAspration:_size.width < 1400 ?1.1:1.4),),
        RecentFiles()
      ],
    );
  }
}

class Fileinfogridcard extends StatelessWidget {
  final double chilAspration;
  final int ccrossAxisCount;
  const Fileinfogridcard({
    required this.chilAspration,
    required this.ccrossAxisCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: demoMyFiles.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: ccrossAxisCount,
          mainAxisSpacing: defaultPadding,
          crossAxisSpacing: defaultPadding,childAspectRatio: chilAspration),
      itemBuilder: (context, index) => Fileinfocard(
        info: demoMyFiles[index],
      ),
    );
  }
}

class Fileinfocard extends StatelessWidget {
  final CloudStorageInfo info;
  const Fileinfocard({
    required this.info,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: info.color?.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Icon(
                Icons.more_vert_rounded,
                color: Colors.white,
              )
            ],
          ),
        ],
      ),
    );
  }
}
