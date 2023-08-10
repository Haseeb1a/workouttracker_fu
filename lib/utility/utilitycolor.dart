import 'package:flutter/material.dart';
 
 
// Color getBackgroundColor(bool isChecked, String duration, DateTime date) {
//   final now = DateTime.now();
//   final diff = date.difference(now).inDays;

//   if (isChecked) {
//     return Colors.green; // Change color to green when checkbox is checked
//   }

//   if (duration == 'Day') {
//     return diff == 0 ? Colors.green : Colors.red; // Change color for today's workouts
//   } else if (duration == 'Week') {
//     if (diff >= 0 && diff <= 6) {
//       return diff == 0 ? Colors.green : Colors.red; // Change color for workouts within a week (including today)
//     }
//   } else if (duration == 'Month') {
//     if (diff >= 0 && diff <= 30) {
//       return diff == 0 ? Colors.green : Colors.red;  // Change color for workouts within a month
//     }
//   }

//   return Color.fromARGB(255, 207, 198, 198); // Default color
// }
// -----------------------------------------condition---------
// Color getBackgroundColor(bool isChecked, String duration, DateTime date) {
//   final now = DateTime.now();
//   final diff = date.difference(now).inDays;

//   if (isChecked) {
//     return Colors.green; // Change color to green when checkbox is checked
//   }

//   if (duration == 'Day') {
//     return diff == 0 ? Colors.green : Colors.red; // Change color for today's workouts
//   } else if (duration == 'Week') {
//     final weekDiff = (date.add(const Duration(days: 7))).difference(now).inDays;
//     if (weekDiff >= 0) {
//       return Colors.red; // Change color for workouts within a week
//     }
//   } else if (duration == 'Month') {
//     final monthDiff = (date.add(const Duration(days: 30))).difference(now).inDays;
//     if (monthDiff >= 0) {
//       return Colors.red; // Change color for workouts within a month
//     }
//   }

//   return Color.fromARGB(255, 207, 198, 198); // Default color
// }
// -----------------------------------------condition33---------------
Color getBackgroundColor(bool isChecked, String duration, DateTime date) {
  final now = DateTime.now();
  final diff = date.difference(now).inDays;

  if (isChecked) {
    return Colors.green; // Change color to green when checkbox is checked
  }

  if (duration == 'Day') {
    return diff == 0 ? Colors.green : Colors.red; // Change color for today's workouts
  } else if (duration == 'Week') {
    if (diff >= 0 && diff <= 6) {
      return Colors.red; // Change color for workouts within a week (excluding today)
    } else if (date.add(const Duration(days: 7)).isAfter(now)) {
      return Color.fromARGB(255, 207, 198, 198); // Change color for workouts beyond a week
    }
  } else if (duration == 'Month') {
    if (diff >= 0 && diff <= 30) {
      return diff == 0 ? Colors.green : Colors.red; // Change color for workouts within a month
    }
  }

  return Color.fromARGB(255, 207, 198, 198); // Default color
}



