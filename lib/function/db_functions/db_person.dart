import 'package:flutter/widgets.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:workouttraker/model/person_model/persondata.dart';
import 'package:workouttraker/model/task_model/workoutmodel1.dart';
ValueNotifier<List<persondata>> persondataListNotifier = ValueNotifier([]);
void addperson(persondata value) async {

  final workoutDB = await Hive.openBox<persondata>('person_db');
  final id = await workoutDB.add(value);
  value.id = id;
 persondataListNotifier.value.add(value);
  // getAllTasks();

  persondataListNotifier.notifyListeners();
}
