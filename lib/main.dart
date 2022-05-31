import 'package:demo/task_home_page.dart';
import 'package:demo/utility.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  ClassBuilder.registerClasses();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
Dio dio = Dio();
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TaskHomePage(),
    );
  }
}
