import 'package:flutter/material.dart';
import 'package:respnosive/responsive.dart';
import 'package:respnosive/screens/compones/storage_detail.dart';
import '../../constants.dart';
import 'header.dart';
import 'my_files.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({Key? key}) : super(key: key);

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: defaultPadding,
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        MyFiles(),
                        if(Responsive.isMobile(context))
                          const SizedBox(
                            height: defaultPadding,
                          ),
                        if(Responsive.isMobile(context))
                          StrogeDetail(),

                      ],
                    )
                  ),
                  if(!Responsive.isMobile(context))
                  const SizedBox(
                    width: defaultPadding,
                  ),
                  if(!Responsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: StrogeDetail(),
                  ),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
