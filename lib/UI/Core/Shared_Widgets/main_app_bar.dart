import 'package:flutter/material.dart';
import 'package:weightly_app/UI/Core/Shared_Widgets/main_burger_navigation.dart';

class WeightlyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? navigationCallback;
  final String appTitle;
  final IconData navigationIcon;
  final List<Widget>? actionlist;
  final bool burgerNav;


  const WeightlyAppBar (
    {
    super.key,
    required this.appTitle,
    required this.burgerNav,
    this.navigationCallback,
    this.navigationIcon = Icons.arrow_back,
    this.actionlist,

    }
  );

  //setup colour configs after
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Title(
        color: Colors.black, 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              appTitle,
            ),
            Icon(Icons.fitness_center),
          ],
        )
      ),
      centerTitle: true,
      elevation: 0,
      // leading: burgerNav ? WeightlyBurgerNav() : IconButton(
      //   onPressed: navigationCallback ?? () => Navigator.pop(context), 
      //   icon: Icon(navigationIcon), 
      // ),
      actions: actionlist ??
       <Widget>[
        IconButton(
          onPressed: () => {}, 
          icon: Icon(Icons.settings))
      ], 
      bottom: PreferredSize(
        preferredSize: preferredSize, 
        child: Container(
          decoration: BoxDecoration(
            gradient:  LinearGradient(
              colors: [
              Colors.black,
              Colors.black12,
              Colors.black26,
              Colors.grey.shade100
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
          ),
          height: 2.0,
        )
      ),

    );
  }

    @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}