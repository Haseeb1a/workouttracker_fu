import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:workouttraker/model/task_model/workoutmodel1.dart';



ValueNotifier<List<Workoutmodel>> workoutListNotifier = ValueNotifier([]);

void addTask(Workoutmodel value) async {
  final workoutDB = await Hive.openBox<Workoutmodel>('workout_db');
  final id = await workoutDB.add(value);
  value.id = id;
  workoutListNotifier.value.add(value);
  getAllTasks();

  workoutListNotifier.notifyListeners();
}

// Future<void> getAllTasks() async {
//   final workoutDB = await Hive.openBox<Workoutmodel>('workout_db');
//   workoutListNotifier.value.clear();
//   workoutListNotifier.value.addAll(workoutDB.values);
//   workoutListNotifier.notifyListeners();
// }
Future<void> getAllTasks() async {
  final workoutDB = await Hive.openBox<Workoutmodel>('workout_db');
  final List<Workoutmodel> workoutList = workoutDB.values.toList();

  // The key is not needed here, just update 'isChecked'
  workoutList.forEach((workout) {
    final storedWorkout = workoutDB.get(workout.id); // Fetch stored Workoutmodel
    if (storedWorkout != null) {
      workout.isChecked = storedWorkout.isChecked;
    }
  });

  workoutListNotifier.value = workoutList;
  workoutListNotifier.notifyListeners();
}


Future<void> deleteTask(int id) async {
  final workoutDB = await Hive.openBox<Workoutmodel>('workout_db');
  await workoutDB.deleteAt(id);
  getAllTasks();
}
// Future<void> updateTask(int id, Workoutmodel value) async {
//   final studentsDB = await Hive.openBox<Workoutmodel>('Workout_db');
//   value.isChecked = studentsDB.getAt(id)!.isChecked;
//   await studentsDB.putAt(id, value);
//   getAllTasks();
// }
Future<void> updateTask(int id, Workoutmodel value) async {
  final workoutDB = await Hive.openBox<Workoutmodel>('workout_db');
  value.isChecked = workoutDB.getAt(id)!.isChecked; // Retrieve existing checkbox state
  await workoutDB.putAt(id, value); // Update the data in Hive
  getAllTasks();
}




