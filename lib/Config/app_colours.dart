import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weightly_app/Runtime/theme_view_model.dart';

abstract class AppColours {
  //page/card primary colours
  Color get primaryPageBackground;
  Color get primaryCardBackground;
  Color get expandedCardBackground;
  Color get drawerBackground;

  //text primary colours
  Color get primaryText;
  Color get secondaryText;
  Color get hintsText;

  //Borders/dividers colours
  Color get borderColour;
  Color get strongBorderColour;
  Color get setRowInnerBorderColour;

  //Accent colours
  Color get primaryObjectColour;
  Color get gradientEndColour;
  Color get currentWeightPill;
  Color get currentWeightPillText;

  //Success colours
  Color get completedDayBackground;
  Color get completedDayText;
  Color get completedDayLabel;

  //Warning colours - PR pills
  Color get prPillBackground;
  Color get prPillText;

  //Exercise icon colours
  Color get exerciseIconBackground;
  Color get exerciseIconColour;
  Color get bodyweightExerciseIconBackground;
  Color get bodyweightExerciseIconColour;
  Color get isolationExerciseIconBackground;
  Color get isolationExerciseIconColour;

  //Danger colours - logout
  Color get logoutColour;

  //Constant colours - same across light and dark themes
  Color get textOnAccent;
}

extension ColourTheme on BuildContext {
  AppColours get getAppColours => watch<ThemeViewModel>().colours;
}


