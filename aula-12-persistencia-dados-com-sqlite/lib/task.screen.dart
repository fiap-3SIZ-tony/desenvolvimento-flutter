import 'package:daily_tasks/task.dart';
import 'package:daily_tasks/task.view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  openBottomSheet(BuildContext context, Function(Task) onPress){
    final titleController = TextEditingController();
    final dateController = TextEditingController();

    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "Informe a tarefa"
              ),
            ),
            TextFormField(
              controller: dateController,
              decoration: InputDecoration(
                  labelText: "Informe a data"
              ),
            ),
            ElevatedButton(onPressed: (){
              final title = titleController.text;
              final date = dateController.text;
              final task = Task(title: title, date: date);
              onPress(task);
            }, child: Text("Salvar"))
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final taskViewModel = context.watch<TaskViewModel>();
    final listTasks = taskViewModel.listTasks;

    return Scaffold(
      appBar: AppBar(title: Text("Lista de tarefas")),
      body: ListView.builder(
        itemCount: listTasks.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(listTasks[index].title ?? ''),
              subtitle: Text(listTasks[index].date ?? ''),
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            openBottomSheet(context, (task){
              taskViewModel.insert(task);
            });
          },
          child: Icon(Icons.add),
      ),
    );
  }
}
