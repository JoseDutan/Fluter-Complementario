import 'package:flutter/material.dart';
import 'package:tarea/view/add_task_page.dart';
import 'package:tarea/view/edit_task_page.dart';
import 'package:tarea/view/home_page.dart';
import 'models/task.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión de Tareas',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
      routes: {
        '/add_task': (context) => const AddTaskPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/edit_task') {
          final task = settings.arguments as Task;
          return MaterialPageRoute(
            builder: (context) => EditTaskPage(task: task),
          );
        }
        return null;
      },
    );
  }
}
