import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weightly_app/UI/Core/Shared_Widgets/main_scaffold.dart';

class MainPage extends StatelessWidget {

  const MainPage({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WeightlyScaffold(
      appTitle: AppLocalizations.of(context)!.appTitle, 
      burgerNavBool: true,
      widgetBody: Row(
        children: [
  

        ],
      )
    );
  }
}