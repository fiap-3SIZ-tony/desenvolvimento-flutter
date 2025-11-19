import 'package:daily_tasks/task.dart';
import 'package:daily_tasks/task_database.service.dart';
import 'package:flutter/cupertino.dart';

class TaskViewModel extends ChangeNotifier {
  final TaskDataBaseService _taskDataBaseService;
  List<Task> _listTasks = [];

  TaskViewModel(this._taskDataBaseService) {
    fetch();
  }

  List<Task> get listTasks => _listTasks;

  insert(Task task) async {
    await _taskDataBaseService.insertTask(task);
    fetch();
  }

  fetch() async {
    _listTasks = await _taskDataBaseService.listTasks();
    notifyListeners();
  }

  update(Task task) async {
    await _taskDataBaseService.updateTask(task);
    fetch();
  }

  delete(Task task) async {
    await _taskDataBaseService.deleteTask(task);
    fetch();
  }
}
