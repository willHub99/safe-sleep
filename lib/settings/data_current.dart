// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:dart_date/dart_date.dart';
import 'package:intl/intl.dart';

var current_data = DateTime.now();

String formattedDate = DateFormat.E('pt_br').format(DateTime.now());

DateTime SubDays(int days) {
  return (Date.today - Duration(days: days));
}

String getData() {
  String day = current_data.day.toString();
  String month = current_data.month.toString();
  String year = current_data.year.toString();

  if (int.parse(day) < 10) {
    day = '0' + day;
  }

  if (int.parse(month) < 10) {
    month = '0' + month;
  }
  return day + "/" + month + "/" + year;
}

String getDay() {
  var day = DateTime.now().day.toString();

  if (int.parse(day) < 10) {
    day = '0' + day;
  }

  return day;
}
