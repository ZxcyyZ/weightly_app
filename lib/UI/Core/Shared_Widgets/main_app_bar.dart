import 'package:flutter/material.dart';

class WeightlyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? navigationCallback;
  final String appTitle;
  final IconData navigationIcon;
  final List<Widget>? actionlist;

  const WeightlyAppBar (
    {
    super.key,
    required this.appTitle,
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
        child: Text(appTitle)
      ),
      leading: IconButton(
        onPressed: navigationCallback ?? () => Navigator.pop(context), 
        icon: Icon(navigationIcon), 
      ),
      actions: actionlist,

    );
  }

    @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}