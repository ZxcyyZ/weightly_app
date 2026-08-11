import 'dart:ui';

import 'package:weightly_app/Config/app_colours.dart';

class DarkTheme implements AppColours {
  // Surfaces
  @override
  Color get primaryPageBackground => const Color(0xFF1A1A18);
  @override
  Color get primaryCardBackground => const Color(0xFF242422);
  @override
  Color get expandedCardBackground => const Color(0xFF2E2E2B);
  @override
  Color get drawerBackground => const Color(0xFF383835);

  // Text
  @override
  Color get primaryText => const Color(0xFFF1EFE8);
  @override
  Color get secondaryText => const Color(0xFF9B9890);
  @override
  Color get hintsText => const Color(0xFF6B6963);

  // Borders
  @override
  Color get borderColour => const Color(0xFF3A3A37);
  @override
  Color get strongBorderColour => const Color(0xFF4A4A46);
  @override
  Color get setRowInnerBorderColour => const Color(0xFF333330);

  // Accent (blue)
  @override
  Color get primaryObjectColour => const Color(0xFF185FA5);
  @override
  Color get gradientEndColour => const Color(0xFF0C447C);
  @override
  Color get currentWeightPill => const Color(0xFF1B2A3E);
  @override
  Color get currentWeightPillText => const Color(0xFF85B7EB);

  // Success (green)
  @override
  Color get completedDayBackground => const Color(0xFF1A2E14);
  @override
  Color get completedDayText => const Color(0xFF97C459);
  @override
  Color get completedDayLabel => const Color(0xFFC3E6A0);

  // Warning (amber) — PR pills
  @override
  Color get prPillBackground => const Color(0xFF2E2410);
  @override
  Color get prPillText => const Color(0xFFFAC775);

  // Purple — exercise icons
  @override
  Color get exerciseIconBackground => const Color(0xFF26215C);
  @override
  Color get exerciseIconColour => const Color(0xFFAFA9EC);

  // Teal — bodyweight exercise icons
  @override
  Color get bodyweightExerciseIconBackground => const Color(0xFF14352B);
  @override
  Color get bodyweightExerciseIconColour => const Color(0xFF6FD3B5);

  // Coral — isolation exercise icons
  @override
  Color get isolationExerciseIconBackground => const Color(0xFF3A2116);
  @override
  Color get isolationExerciseIconColour => const Color(0xFFE8A98C);

  // Danger (red) — logout
  @override
  Color get logoutColour => const Color(0xFFA32D2D);

  // Constant
  @override
  Color get textOnAccent => const Color(0xFFFFFFFF);
}
