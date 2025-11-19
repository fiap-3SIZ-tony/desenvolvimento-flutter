import 'package:daily_tasks/task.screen.dart';
import 'package:daily_tasks/task.view_model.dart';
import 'package:daily_tasks/task_database.service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (_)=> TaskDataBaseService()),
        ChangeNotifierProvider(create: (context)=>TaskViewModel(
          context.read<TaskDataBaseService>()
        ))
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const TaskScreen(),
    );
  }
}
