import 'dart:ui';

import 'package:weightly_app/Config/app_colours.dart';

class LightTheme implements AppColours {
  // Surfaces
  @override
  Color get primaryPageBackground => const Color(0xFFF5F3EF);
  @override
  Color get primaryCardBackground => const Color(0xFFFFFFFF);
  @override
  Color get expandedCardBackground => const Color(0xFFFAFAF8);
  @override
  Color get drawerBackground => const Color(0xFFFFFFFF);

  // Text
  @override
  Color get primaryText => const Color(0xFF1C1C1A);
  @override
  Color get secondaryText => const Color(0xFF6B6963);
  @override
  Color get hintsText => const Color(0xFF9B9890);

  // Borders
  @override
  Color get borderColour => const Color(0xFFE2E0DA);
  @override
  Color get strongBorderColour => const Color(0xFFC4C2BA);
  @override
  Color get setRowInnerBorderColour => const Color(0xFFEEEDEA);

  // Accent (blue)
  @override
  Color get primaryObjectColour => const Color(0xFF185FA5);
  @override
  Color get gradientEndColour => const Color(0xFF0C447C);
  @override
  Color get currentWeightPill => const Color(0xFFE6F1FB);
  @override
  Color get currentWeightPillText => const Color(0xFF185FA5);

  // Success (green) — completed days
  @override
  Color get completedDayBackground => const Color(0xFFEAF3DE);
  @override
  Color get completedDayText => const Color(0xFF639922);
  @override
  Color get completedDayLabel => const Color(0xFF3B6D11);

  // Warning (amber) — PR pills
  @override
  Color get prPillBackground => const Color(0xFFFAEEDA);
  @override
  Color get prPillText => const Color(0xFF854F0B);

  // Purple — exercise icons (compounds)
  @override
  Color get exerciseIconBackground => const Color(0xFFEEEDFE);
  @override
  Color get exerciseIconColour => const Color(0xFF534AB7);

  // Teal — bodyweight exercise icons
  @override
  Color get bodyweightExerciseIconBackground => const Color(0xFFE1F5EE);
  @override
  Color get bodyweightExerciseIconColour => const Color(0xFF0F6E56);

  // Coral — isolation exercise icons
  @override
  Color get isolationExerciseIconBackground => const Color(0xFFFAECE7);
  @override
  Color get isolationExerciseIconColour => const Color(0xFF993C1D);

  // Danger (red) — logout
  @override
  Color get logoutColour => const Color(0xFFA32D2D);

  // Constant
  @override
  Color get textOnAccent => const Color(0xFFFFFFFF);
}
