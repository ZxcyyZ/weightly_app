import 'package:flutter/material.dart';
import 'main_app_bar.dart';

class WeightlyScaffold extends StatelessWidget {
  final VoidCallback? callbackNavigation;
  final List<Widget>? actionlist;
  final String appTitle;
  final Widget widgetBody;

  const WeightlyScaffold ({
    super.key,
    required this.appTitle,
    required this.widgetBody,
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
      ),
      // floatingActionButton: FloatingActionButton(onPressed: onPressed), -- TO DO, individual option?
      body: widgetBody,
      // bottomNavigationBar: , -- TO DO, add as param option for main page
    );
  }
}