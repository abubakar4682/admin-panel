import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../responsive.dart';
import 'compones/dasbord_screen.dart';
import 'compones/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // drawer: SideMenu(),
        body: SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isDesktop(context))
          Expanded(
              flex: 1,
              child: Sidemenu()),
          Expanded(
              flex: 5,
              child: Dashbord()),
        ],
      ),
    ));
  }
}



class Drawerlisttile extends StatelessWidget {
  final String title;
  final Icon icon;
  final VoidCallback press;
  const Drawerlisttile({
    required this.title,
    required this.icon,
    required this.press,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: icon,
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
