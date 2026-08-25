


import 'package:flutter/material.dart';
import 'package:weightly_app/Config/app_colours.dart';
import 'package:weightly_app/UI/Views/Main_Summary_View/view_models/weightly_summary_view_model.dart';
import 'package:weightly_app/Utils/extensions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DateCardWidget extends StatefulWidget {
  final WeightlySummaryViewModel viewModel;
  final DateTime selectedDate;
  final List<DateTime> dateTimeRange;

  const DateCardWidget ({
    super.key,
    required this.selectedDate,
    required this.dateTimeRange,
    required this.viewModel,
  });

  @override
  State<DateCardWidget> createState() => _DateCardWidget();
}
class _DateCardWidget extends State<DateCardWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Row(
        children:
            widget.dateTimeRange.map((date) {
              return Expanded(
                child: Container( //Wrap inside of a gesture detector
                  width: 65,
                  margin: const EdgeInsets.only(left: 5,right: 5, top: 5),
                  decoration: BoxDecoration(
                    color: widget.viewModel.isCurrentDate(date) ? 
                      context.getAppColours.accent.primary : context.getAppColours.success.background,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Column(
                    children: [
                      Text(
                        Utils.truncateDayFormat(date.selectedDateFormat),
                        style: TextStyle(
                          color: widget.viewModel.isCurrentDate(date) ? 
                            context.getAppColours.accent.currentWeightPillText : context.getAppColours.success.text,
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        date.dayFormat,
                        style: TextStyle(
                          color: widget.viewModel.isCurrentDate(date) ? 
                            context.getAppColours.accent.currentWeightPillText : context.getAppColours.success.text,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Holder",
                        style: TextStyle(
                           color: widget.viewModel.isCurrentDate(date) ? 
                            context.getAppColours.accent.currentWeightPillText : context.getAppColours.success.text,
                          fontWeight: FontWeight.w500,
                          fontSize: 12
                        ),
                      ),
                      if(widget.viewModel.isCurrentDate(date))
                        Text(
                          AppLocalizations.of(context)!.today,
                          style: TextStyle(
                           color: widget.viewModel.isCurrentDate(date) ? 
                            context.getAppColours.accent.currentWeightPillText : context.getAppColours.success.text,
                          fontWeight: FontWeight.w500,
                          fontSize: 12
                        ),
                        )
                      
                    ],
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }

}
