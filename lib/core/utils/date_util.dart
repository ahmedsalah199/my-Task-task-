import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var now = DateTime.now();
var formatter = DateFormat('EEEE-dd-MMMM');
String formattedDate = formatter.format(now);
int sumDaysOfMonth = DateUtils.getDaysInMonth(now.year, now.month);

String dayNameOfMonth(index) {
  var now = DateTime.now();
  DateTime lastDayOfMonth = DateTime(now.year, now.month, 0);
  final currentDate = lastDayOfMonth.add(Duration(days: index + 1));
  return DateFormat('E').format(currentDate);
}

String dayNumberOfMonth(index) {
  var now = DateTime.now();
  DateTime lastDayOfMonth = DateTime(now.year, now.month, 0);
  final currentDate = lastDayOfMonth.add(Duration(days: index + 1));
  return DateFormat('dd').format(currentDate);
}
