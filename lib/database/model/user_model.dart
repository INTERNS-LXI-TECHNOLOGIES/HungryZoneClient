class UserModel {
  int? id;
  final String firstName;
  final String lastName;
  final String emailId;
  final String phoneNumber;
  final String passwords;

  UserModel(
      {this.id,
      required this.firstName,
      required this.lastName,
      required this.emailId,
      required this.phoneNumber,
      required this.passwords});
}
