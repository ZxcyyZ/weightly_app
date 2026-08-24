import 'package:flutter/material.dart';
import 'package:weightly_app/Runtime/main_providers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weightly_app/Runtime/main_routing.dart';

void main() {
  runApp( 
    const MainProviders(
      mainWidget: WeightlyAppMaterial()
    )
  );
}

class WeightlyAppMaterial extends StatelessWidget {
  const WeightlyAppMaterial({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouting.generateBurgerNavigation,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: '/MainSummaryPage',
    );
  }
}

