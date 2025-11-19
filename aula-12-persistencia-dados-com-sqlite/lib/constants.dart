final tableName = "tasks";
final databaseName = "tasks_database.db";
final scriptCreateTaskTable = ''' 
    CREATE TABLE tasks(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT,
      date TEXT
    )
''';
