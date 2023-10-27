import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_apps/pages/home_page.dart';

void main() async {
  //init the hive
  await Hive.initFlutter();
  // open the box
  var box = await Hive.openBox('myBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Color primaryColor = Color(0xFF86A789);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.yellow[200],
        primarySwatch: Colors.yellow,
      ),
      home: const HomePage(),
    );
  }
}
