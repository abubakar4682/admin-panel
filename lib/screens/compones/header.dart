import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:respnosive/responsive.dart';

import '../../constants.dart';
class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding/2),
        child: Row(
          children: [
            if(!Responsive.isDesktop(context))
              if(Responsive.isMobile(context))
            IconButton(onPressed: (){


            }, icon: Icon(Icons.menu)),
            Text('Dashbord',style: Theme.of(context).textTheme.headline6,),
            Spacer(
              flex: 2,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  fillColor: secondaryColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: InkWell(
                    onTap: (){},
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding/2),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.search,)),
                  ), // Add suffix icon
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding/2),

              margin: EdgeInsets.only(left: defaultPadding),

              decoration: BoxDecoration(
                  color:secondaryColor ,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.white10)
              ),
              child: Row(
                children: [
                  Icon(Icons.person_off_outlined,),
                  SizedBox(
                    width: 30,
                  ),
                  Text('Profile'),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}