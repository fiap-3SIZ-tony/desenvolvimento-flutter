import 'package:daily_tasks/constants.dart';
import 'package:daily_tasks/task.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class TaskDataBaseService {
  Future<Database> get _db async {
    return openDatabase(
      join(await getDatabasesPath(), databaseName),
      version: 1,
      onCreate: (db, version) {
        return db.execute(scriptCreateTaskTable);
      },
    );
  }

  Future<void> insertTask(Task task) async {
    final db = await _db;
    db.insert(tableName, task.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Task>> listTasks() async{
    final db = await _db;
    final List<Map<String, dynamic>> maps  = await db.query(tableName);
    return maps.map((element)=>Task.fromJson(element)).toList();
  }

  Future<void> deleteTask(Task task) async {
    final db = await _db;
    db.delete(tableName, where: 'id = ?', whereArgs: [task.id]);
  }

  Future<void> updateTask(Task task) async {
    final db = await _db;
    db.update(tableName,task.toJson(), where: 'id = ?', whereArgs: [task.id]);
  }
}
