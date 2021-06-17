import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/page/home_page.dart';
import 'package:todo_app/provider/todos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = "Todo App";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          title: title,
          theme: ThemeData(
              primarySwatch: Colors.pink,
              scaffoldBackgroundColor: Color(0xFFf6f5ee)),
          home: HomePage(),
        ),
      );
}
