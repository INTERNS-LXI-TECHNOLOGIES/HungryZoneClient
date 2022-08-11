import 'package:flutter/material.dart';
import 'package:hungryzone/database/model/user_model.dart';

ValueNotifier<List<UserModel>> userListNotifier = ValueNotifier([]);

void addUser(UserModel user) {
  debugPrint(user.toString());
  userListNotifier.value.add(user);
}
