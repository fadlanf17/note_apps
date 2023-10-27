import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference aur box
  final _myBox = Hive.box('myBox');

  // run this method if this is the first time to open the apps
  void createInitialData() {
    toDoList = [
      ['Make to tutorial', false],
      ['Do exercise', false],
    ];
  }

  // load the data to database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
