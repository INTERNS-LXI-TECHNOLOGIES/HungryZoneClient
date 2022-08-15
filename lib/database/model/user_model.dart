import 'package:hive_flutter/adapters.dart';
part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
  final String firstName;
  @HiveField(2)
  final String lastName;
  @HiveField(3)
  final String emailId;
  @HiveField(4)
  final String phoneNumber;
  @HiveField(5)
  final String passwords;

  UserModel(
      {this.id,
      required this.firstName,
      required this.lastName,
      required this.emailId,
      required this.phoneNumber,
      required this.passwords});
}
