import 'package:flutter/material.dart';
 import 'package:intl/intl.dart';
 
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
//       return Colors.red; // Change color for workouts within a week (excluding today)
//     } else if (date.add(const Duration(days: 7)).isAfter(now)) {
//       return Color.fromARGB(255, 207, 198, 198); // Change color for workouts beyond a week
//     }
//   } else if (duration == 'Month') {
//     if (diff >= 0 && diff <= 30) {
//       return diff == 0 ? Colors.green : Colors.red; // Change color for workouts within a month
//     }
//   }

//   return Color.fromARGB(255, 207, 198, 198); // Default color
// }
// --------------------------------------------0gweek
// Color getBackgroundColor(bool isChecked, String duration, DateTime date) {
//   print('date is$date');
//   final now = DateTime.now();
//   print('date now $now');

//   final diff = date.difference(now).inDays;
//   print('in days $diff');
//   print('-----------------------------------------');

//   if (isChecked) {
//     return Colors.green; // Change color to green when checkbox is checked
//   }

//   if (duration == 'Day') {
//     return diff == 0 ? Color.fromARGB(255, 207, 198, 198): Colors.red; // Change color for today's workouts
//   } else if (duration == 'Week') {
//     if (diff >= 0 && diff <= 6) {
//       return Colors.red; // Change color for workouts within a week (excluding today)
//     } else if (date.isBefore(now.add(const Duration(days: 7))) &&
//                date.isAfter(now)) {
//       return Colors.red; // Change color for workouts within the next 7 days, excluding today
//     } else if (date.add(const Duration(days: 7)).isBefore(now)) { // Updated condition
//       return Colors.red; // Change color for workouts within a week (including today)
//     } else if (date.add(const Duration(days: 7)).isAfter(now)) {
//       return Color.fromARGB(255, 207, 198, 198); // Change color for workouts beyond a week
//     }
//   } else if (duration == 'Month') {
//     if (diff >= 0 && diff <= 30) {
//       return diff == 0 ?Color.fromARGB(255, 207, 198, 198): Colors.red; // Change color for workouts within a month
//     }
//   }

//   return Color.fromARGB(255, 207, 198, 198); // Default color
// }
// ------------------------------------------------------ogreal--
Color getBackgroundColor(bool isChecked, String duration, DateTime date) {
  final now = DateTime.now();
  final diff = date.difference(now).inDays;

  if (isChecked) {
    return Colors.green; // Change color to green when checkbox is checked
  }

//   if (duration == 'Day') {
//   if (date.isBefore(now) || date.isAtSameMomentAs(now)) {
//     return Colors.red; // Change color for workouts within a day (including today)
//   }
//   return Color.fromARGB(255, 207, 198, 198); // Change color for future workouts within a day
// }
    if (duration == 'Day') {
    if (date.isBefore(now.add(const Duration(days: 100000))) &&
        date.isAfter(now.subtract(const Duration(days: 1)))) {
      return Color.fromARGB(255, 207, 198, 198); // Change color for workouts within a day (including today)
    }
    return Colors.red; // Change color for future workouts within a day
  } 
   else if (duration == 'Week') {
    if (diff >= 0 && diff <= 6) {
      return Colors.red; // Change color for workouts within a week (excluding today)
    } else if (date.isBefore(now.add(const Duration(days: 7))) &&
               date.isAfter(now)) {
      return Colors.red; // Change color for workouts within the next 7 days, excluding today
    } else if (date.add(const Duration(days: 7)).isBefore(now)) {
      return Colors.red; // Change color for workouts within a week (including today)
    } else if (date.add(const Duration(days: 7)).isAfter(now)) {
      return Color.fromARGB(255, 207, 198, 198); // Change color for workouts beyond a week
    }
  } else if (duration == 'Month') {
    if (date.add(const Duration(days: 30)).isBefore(now)) {
      return Colors.red; // Change color for workouts within a month (including today)
    }
    if (diff >= 0 && diff <= 30) {
      return diff == 0 ? Colors.green : Colors.red; // Change color for workouts within a month
    }
  }

  return Color.fromARGB(255, 207, 198, 198); // Default color
}
// -------------------------------------------------------
// Color getBackgroundColor(bool isChecked, String duration, DateTime date) {
//   final now = DateTime.now();
//   final diff = date.difference(now).inDays;

//   if (isChecked) {
//     return Colors.green; // Change color to green when checkbox is checked
//   }

//   if (duration == 'Day') {
//     if (date.isBefore(now.add(const Duration(days: 100000))) &&
//         date.isAfter(now.subtract(const Duration(days: 1)))) {
//       return Colors.red; // Change color for workouts within a day (including today)
//     }
//     return diff == 0 ? Color.fromARGB(255, 207, 198, 198) : Colors.red; // Change color for future workouts within a day
//   } else if (duration == 'Week') {
//     if (diff >= 0 && diff <= 6) {
//       return Colors.red; // Change color for workouts within a week (excluding today)
//     } else if (date.isBefore(now.add(const Duration(days: 7))) &&
//                date.isAfter(now)) {
//       return Colors.red; // Change color for workouts within the next 7 days, excluding today
//     } else if (date.add(const Duration(days: 7)).isBefore(now)) {
//       return Colors.red; // Change color for workouts within a week (including today)
//     } else if (date.add(const Duration(days: 7)).isAfter(now)) {
//       return Color.fromARGB(255, 207, 198, 198); // Change color for workouts beyond a week
//     }
//   } else if (duration == 'Month') {
//     if (date.add(const Duration(days: 30)).isBefore(now)) {
//       return Color.fromARGB(255, 207, 198, 198); // Change color for workouts within a month (including today)
//     }
//     if (diff >= 0 && diff <= 30) {
//       return diff == 0 ? Color.fromARGB(255, 207, 198, 198) : Colors.red; // Change color for workouts within a month
//     }
//   }

//   return Color.fromARGB(255, 207, 198, 198); // Default color
// }
 Color getContainerColor(bool isChecked, String duration, int diff) {
    if (isChecked) {
      return Colors.green;
    }

    if (diff <= 0 && diff >= -1) {
      return Colors.red; // Red for today or past workouts
    }

    if (duration == 'Day' && diff == 1) {
      return Colors.red;
      // Red for upcoming workout within a day
      
    }

    if (duration == 'Week' && diff >= 0 && diff <= 6) {
      return Colors.red; // Red for workouts within a week (excluding today)
    }

    if (duration == 'Month' && diff >= 0 && diff <= 30) {
      return Colors.red; // Red for workouts within a month
    }

    return Color.fromARGB(255, 207, 198, 198); // Default color
  }




