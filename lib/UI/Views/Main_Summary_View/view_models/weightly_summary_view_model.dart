import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeightlySummaryViewModel extends ChangeNotifier {
  final bool loading = false;
  final DateTime selectedDate = DateTime.now();
  final List<DateTime> selectedDateRange = [];

  void setDateRange () {
    final DateTime startDate = selectedDate.subtract(
     const Duration(
       days: 2)
    );

    for(var i = 0; i< 6; i++){
      selectedDateRange.add(startDate.add(Duration(days: i)));
    }
    print("Current selected date range: $selectedDateRange");
  }

  bool isCurrentDate (DateTime selected) {
    if(selected == selectedDate){
      return true;
    } else {
      return false;
    }
  }

}