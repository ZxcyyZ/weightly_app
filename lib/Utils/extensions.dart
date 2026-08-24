
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
 int get weekOfYear { 
 final startOfYear = DateTime(year, 1, 1);
 final weekNumber = 
 ((difference(startOfYear).inDays + startOfYear.weekday) / 7).ceil();
 return weekNumber; 
 } 

 String get dayFormat {
  return DateFormat.d().format(this);
 }

 String get selectedDateFormat {
  return DateFormat.EEEE().format(this);
 }
} 

class Utils {
  static String truncateDayFormat(String text) {
    return text.substring(0,3);
  }
}