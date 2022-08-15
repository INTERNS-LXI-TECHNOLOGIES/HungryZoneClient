import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hungryzone/database/model/user_model.dart';

ValueNotifier<List<UserModel>> userListNotifier = ValueNotifier([]);

Future<void> addUser(UserModel user) async {
  final userDb = await Hive.openBox<UserModel>('user_db');
  final _id = userDb.add(user);
  user.id = _id as int?;
  debugPrint(user.toString());
  userListNotifier.value.add(user);
  userListNotifier.notifyListeners();
}

Future<void> getAllUser() async {
  final userDb = await Hive.openBox<UserModel>('user_db');
  userListNotifier.value.clear();
  userListNotifier.value.addAll(userDb.values);
  userListNotifier.notifyListeners();
}
