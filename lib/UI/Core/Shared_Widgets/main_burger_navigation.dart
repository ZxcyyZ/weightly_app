

import 'package:flutter/material.dart';
import 'package:weightly_app/Config/app_colours.dart';

class WeightlyBurgerNav extends StatelessWidget{
  
  const WeightlyBurgerNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            SizedBox(
              height: 125,
              child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => {}, 
                    icon: Icon(Icons.account_circle)
                  ),
                  Text("Insert User Details here")
                ],
              )
              ),
            ),
            ListTile(
              title: Text('Navigation option 1'),
            ),
            ListTile(
              title: Text('Navigation option 2')
            ),
            ListTile(
              title: Text('Navigation option 3')
            ),
          ],
        ),
    );
  }
}