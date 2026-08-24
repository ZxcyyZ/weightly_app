import 'dart:ui';

import 'package:weightly_app/Config/app_colours.dart';

class DarkTheme implements AppColours {
  @override
  SurfaceColours get surfaces => const SurfaceColours(
        pageBackground: Color(0xFF1A1A18),
        cardBackground: Color(0xFF242422),
        expandedCardBackground: Color(0xFF2E2E2B),
        drawerBackground: Color(0xFF383835),
      );

  @override
  TextColours get text => const TextColours(
        primary: Color(0xFFF1EFE8),
        secondary: Color(0xFF9B9890),
        hints: Color(0xFF6B6963),
      );

  @override
  BorderColours get borders => const BorderColours(
        standard: Color(0xFF3A3A37),
        strong: Color(0xFF4A4A46),
        setRowInner: Color(0xFF333330),
      );

  @override
  AccentColours get accent => const AccentColours(
        primary: Color(0xFF185FA5),
        gradientEnd: Color(0xFF0C447C),
        currentWeightPill: Color(0xFF1B2A3E),
        currentWeightPillText: Color(0xFF85B7EB),
      );

  @override
  SuccessColours get success => const SuccessColours(
        background: Color(0xFF1A2E14),
        text: Color(0xFF97C459),
        label: Color(0xFFC3E6A0),
      );

  @override
  WarningColours get warning => const WarningColours(
        background: Color(0xFF2E2410),
        text: Color(0xFFFAC775),
      );

  @override
  ExerciseIconColours get exerciseIcons => const ExerciseIconColours(
        compound: IconColourPair(
          background: Color(0xFF26215C),
          colour: Color(0xFFAFA9EC),
        ),
        bodyweight: IconColourPair(
          background: Color(0xFF14352B),
          colour: Color(0xFF6FD3B5),
        ),
        isolation: IconColourPair(
          background: Color(0xFF3A2116),
          colour: Color(0xFFE8A98C),
        ),
      );

  @override
  Color get logoutColour => const Color(0xFFA32D2D);

  @override
  Color get textOnAccent => const Color(0xFFFFFFFF);
}
