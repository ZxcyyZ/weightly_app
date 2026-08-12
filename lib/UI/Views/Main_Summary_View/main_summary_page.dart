import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weightly_app/Config/app_colours.dart';
import 'package:weightly_app/UI/Core/Shared_Widgets/main_scaffold.dart';

class MainSummaryPage extends StatelessWidget {

  const MainSummaryPage({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return WeightlyScaffold(
      appTitle: AppLocalizations.of(context)!.appTitle, 
      burgerNavBool: true,
      widgetBody: Column(
        children: <Widget> [
          _dateCard(context),
        ],
      )
      
    );
  }

  Widget _dateCard(BuildContext context) {
    return Container(
      width: 500,
      height: 150,
      decoration: BoxDecoration(
        color: context.getAppColours.primaryCardBackground,
        border: Border(
          top: BorderSide(
            width: 2.0,
            color: context.getAppColours.borderColour
          ),
          bottom: BorderSide(
            width: 2.0,
            color: context.getAppColours.borderColour
          ),
        )
      ),
      child: Column(
        children: [
          Row(
            children: [

            ],
          ),
          Row(
            children: [

            ],
          )
        ],
      ),
    );
  }
}