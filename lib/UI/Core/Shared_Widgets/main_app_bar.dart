import 'package:flutter/material.dart';
import 'package:weightly_app/Config/app_colours.dart';
import 'package:weightly_app/UI/Core/Shared_Widgets/main_burger_navigation.dart';

class WeightlyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? navigationCallback;
  final String appTitle;
  final IconData navigationIcon;
  final List<Widget>? actionlist;
  final bool burgerNav;
  final bool isBottom;


  const WeightlyAppBar (
    {
    super.key,
    required this.appTitle,
    required this.burgerNav,
    this.navigationCallback,
    this.navigationIcon = Icons.arrow_back,
    this.actionlist,
    this.isBottom = false,

    }
  );

  //setup colour configs after
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Title(
        color: Colors.white,
        title: "Placeholder",
        child: Text(
          style: TextStyle(
            color: context.getAppColours.text.primary
          ),
          appTitle,
        ),
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
          icon: Icon(
            Icons.settings,
          )
        )
      ], 
      bottom: isBottom ? PreferredSize(
        preferredSize: preferredSize, 
        child: Container(
          decoration: BoxDecoration(
            color: context.getAppColours.borders.standard
          ),
          height: 1.0,
        )
      ) : null,
      backgroundColor: context.getAppColours.surfaces.pageBackground,
      iconTheme: IconThemeData(
        color: context.getAppColours.textOnAccent
      ),

    );
  }

    @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}