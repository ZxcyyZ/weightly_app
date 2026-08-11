import 'package:flutter/material.dart';
import 'package:weightly_app/UI/Core/Shared_Widgets/main_burger_navigation.dart';
import 'main_app_bar.dart';

class WeightlyScaffold extends StatelessWidget {
  final VoidCallback? callbackNavigation;
  final List<Widget>? actionlist;
  final String appTitle;
  final Widget widgetBody;
  final bool burgerNavBool;

  const WeightlyScaffold ({
    super.key,
    required this.appTitle,
    required this.widgetBody,
    required this.burgerNavBool,
    this.callbackNavigation,
    this.actionlist,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WeightlyAppBar(
        appTitle: appTitle,
        actionlist: actionlist,
        navigationCallback: callbackNavigation,
        burgerNav: burgerNavBool ,
      ),
      drawer: WeightlyBurgerNav(),
      backgroundColor: Colors.grey.shade100,
      body: widgetBody,
      // bottomNavigationBar: , -- TO DO, add as param option for main page
    );
  }
}