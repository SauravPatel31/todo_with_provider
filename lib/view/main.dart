import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/data/localdata/dbhelper.dart';
import 'package:todo_app/dbprovider.dart';
import 'package:todo_app/view/home_page.dart';


void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=>DBProvider(dBhelper: DBhelper.getInstance()),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO APP',

      home: HomePage(),
    );
  }
}


