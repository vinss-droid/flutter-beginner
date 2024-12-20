import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {

  List toDoList = [];

  //   reference our box
  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ['This is task 1', false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }

}