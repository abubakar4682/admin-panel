import 'package:flutter/material.dart';
import 'package:respnosive/responsive.dart';

import '../mainscreen.dart';
class Sidemenu extends StatelessWidget {
  const Sidemenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DrawerHeader(
                child: Icon(
                  Icons.password_rounded,
                  size: 50,
                )),
            Drawerlisttile(
              title: 'Dashbord',
              icon: Icon(Icons.access_alarms_rounded),
              press: () {},
            ),
            Drawerlisttile(
              title: 'Dashbord',
              icon: Icon(Icons.access_alarms_rounded),
              press: () {},
            ),
            Drawerlisttile(
              title: 'Dashbord',
              icon: Icon(Icons.access_alarms_rounded),
              press: () {},
            ),
            Drawerlisttile(
              title: 'Dashbord',
              icon: Icon(Icons.access_alarms_rounded),
              press: () {},
            ),
            Drawerlisttile(
              title: 'Dashbord',
              icon: Icon(Icons.access_alarms_rounded),
              press: () {},
            ),
            Drawerlisttile(
              title: 'Dashbord',
              icon: Icon(Icons.access_alarms_rounded),
              press: () {},
            ),
            Drawerlisttile(
              title: 'Dashbord',
              icon: Icon(Icons.access_alarms_rounded),
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}