import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weightly_app/Runtime/theme_view_model.dart';

class SurfaceColours {
  const SurfaceColours({
    required this.pageBackground,
    required this.cardBackground,
    required this.expandedCardBackground,
    required this.drawerBackground,
  });

  final Color pageBackground;
  final Color cardBackground;
  final Color expandedCardBackground;
  final Color drawerBackground;
}

class TextColours {
  const TextColours({
    required this.primary,
    required this.secondary,
    required this.hints,
  });

  final Color primary;
  final Color secondary;
  final Color hints;
}

class BorderColours {
  const BorderColours({
    required this.standard,
    required this.strong,
    required this.setRowInner,
  });

  final Color standard;
  final Color strong;
  final Color setRowInner;
}

class AccentColours {
  const AccentColours({
    required this.primary,
    required this.gradientEnd,
    required this.currentWeightPill,
    required this.currentWeightPillText,
  });

  final Color primary;
  final Color gradientEnd;
  final Color currentWeightPill;
  final Color currentWeightPillText;
}

class SuccessColours {
  const SuccessColours({
    required this.background,
    required this.text,
    required this.label,
  });

  final Color background;
  final Color text;
  final Color label;
}

class WarningColours {
  const WarningColours({
    required this.background,
    required this.text,
  });

  final Color background;
  final Color text;
}

// Compound/bodyweight/isolation are all "a background + a colour" - one
// reusable pair type instead of three near-identical sets of fields.
class IconColourPair {
  const IconColourPair({
    required this.background,
    required this.colour,
  });

  final Color background;
  final Color colour;
}

class ExerciseIconColours {
  const ExerciseIconColours({
    required this.compound,
    required this.bodyweight,
    required this.isolation,
  });

  final IconColourPair compound;
  final IconColourPair bodyweight;
  final IconColourPair isolation;
}

abstract class AppColours {
  SurfaceColours get surfaces;
  TextColours get text;
  BorderColours get borders;
  AccentColours get accent;
  SuccessColours get success;
  WarningColours get warning;
  ExerciseIconColours get exerciseIcons;

  //Danger colours - logout
  Color get logoutColour;

  //Constant colours - same across light and dark themes
  Color get textOnAccent;
}

extension ColourTheme on BuildContext {
  AppColours get getAppColours => watch<ThemeViewModel>().colours;
}
