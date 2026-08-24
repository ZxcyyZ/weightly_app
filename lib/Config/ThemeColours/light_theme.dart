import 'dart:ui';

import 'package:weightly_app/Config/app_colours.dart';

class LightTheme implements AppColours {
  @override
  SurfaceColours get surfaces => const SurfaceColours(
        pageBackground: Color(0xFFF5F3EF),
        cardBackground: Color(0xFFFFFFFF),
        expandedCardBackground: Color(0xFFFAFAF8),
        drawerBackground: Color(0xFFFFFFFF),
      );

  @override
  TextColours get text => const TextColours(
        primary: Color(0xFF1C1C1A),
        secondary: Color(0xFF6B6963),
        hints: Color(0xFF9B9890),
      );

  @override
  BorderColours get borders => const BorderColours(
        standard: Color(0xFFE2E0DA),
        strong: Color(0xFFC4C2BA),
        setRowInner: Color(0xFFEEEDEA),
      );

  @override
  AccentColours get accent => const AccentColours(
        primary: Color(0xFF185FA5),
        gradientEnd: Color(0xFF0C447C),
        currentWeightPill: Color(0xFFE6F1FB),
        currentWeightPillText: Color(0xFF185FA5),
      );

  @override
  SuccessColours get success => const SuccessColours(
        background: Color(0xFFEAF3DE),
        text: Color(0xFF639922),
        label: Color(0xFF3B6D11),
      );

  @override
  WarningColours get warning => const WarningColours(
        background: Color(0xFFFAEEDA),
        text: Color(0xFF854F0B),
      );

  @override
  ExerciseIconColours get exerciseIcons => const ExerciseIconColours(
        compound: IconColourPair(
          background: Color(0xFFEEEDFE),
          colour: Color(0xFF534AB7),
        ),
        bodyweight: IconColourPair(
          background: Color(0xFFE1F5EE),
          colour: Color(0xFF0F6E56),
        ),
        isolation: IconColourPair(
          background: Color(0xFFFAECE7),
          colour: Color(0xFF993C1D),
        ),
      );

  @override
  Color get logoutColour => const Color(0xFFA32D2D);

  @override
  Color get textOnAccent => const Color(0xFFFFFFFF);
}
