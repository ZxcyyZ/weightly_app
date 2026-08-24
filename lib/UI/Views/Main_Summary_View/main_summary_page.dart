import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weightly_app/Config/app_colours.dart';
import 'package:weightly_app/UI/Core/Shared_Widgets/main_scaffold.dart';
import 'package:weightly_app/UI/Views/Main_Summary_View/view_models/weightly_summary_view_model.dart';
import 'package:weightly_app/UI/Views/Main_Summary_View/widgets/date_card.dart';
import 'package:weightly_app/Utils/extensions.dart';

class MainSummaryPage extends StatelessWidget {
  const MainSummaryPage({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final summaryVM = context.watch<WeightlySummaryViewModel>();

    return WeightlyScaffold(
      appTitle: AppLocalizations.of(context)!.appTitle, 
      burgerNavBool: true,
      widgetBody: Column(
        children: <Widget> [
          Row(
            children: <Widget> [
              Expanded(
                child: _dateCard(context, summaryVM.selectedDate , summaryVM.selectedDateRange, summaryVM)
              )
            ],
          )
        ],
      )
      
    );
  }

  Widget _dateCard(
    BuildContext context,
    DateTime selectedDate,
    List<DateTime> dateList,
    WeightlySummaryViewModel summaryVM
    ) {
    final int isoWeek = selectedDate.weekOfYear;
    final String formatedMonth =  DateFormat.MMMM().format(selectedDate);

    return Container(
      padding: EdgeInsets.fromLTRB(8, 12, 8, 12),
      decoration: BoxDecoration(
        color: context.getAppColours.surfaces.cardBackground,
        border: Border(
          top: BorderSide(
            width: 2.0,
            color: context.getAppColours.borders.standard
          ),
          bottom: BorderSide(
            width: 2.0,
            color: context.getAppColours.borders.standard
          ),
        )
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => () , 
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: context.getAppColours.accent.primary,
                  size: 32,
                  )
              ),
              Column(
                children: [
                  Text(
                    formatedMonth,
                    style: TextStyle(
                      color: context.getAppColours.text.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),   
                  ),
                  Text(
                    "${AppLocalizations.of(context)!.weekText} $isoWeek",
                    style: TextStyle(
                      color: context.getAppColours.text.secondary,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                  )
              ],
              ),
               IconButton(
                onPressed: () => () , 
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: context.getAppColours.accent.primary,
                  size: 32,
                  )
              ),
            ],
          ),
        DateCardWidget(selectedDate: selectedDate, dateTimeRange: dateList, viewModel: summaryVM,)
        ],
      ),
    );
  }
}