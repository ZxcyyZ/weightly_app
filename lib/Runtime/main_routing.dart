import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weightly_app/UI/Views/Main_Summary_View/main_summary_page.dart';
import 'package:weightly_app/UI/Views/Main_Summary_View/view_models/weightly_summary_view_model.dart';

class AppRouting {
  static Route<dynamic> generateBurgerNavigation(RouteSettings pageName) {
    switch(pageName.name){
      case '/MainSummaryPage':
        return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider<WeightlySummaryViewModel>(
            create: (context) => WeightlySummaryViewModel(),
            child: MainSummaryPage()
        ),
      );
      default:
        return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider<WeightlySummaryViewModel>(
            create: (context) => WeightlySummaryViewModel(),
            child: MainSummaryPage()
        ),
      );
    }
  }
}