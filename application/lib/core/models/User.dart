import 'package:uuid/uuid.dart';

var uuid = Uuid();

class User {
  final String userId;
  final String firstName;
  final String lastName;
  final String emailAddress;
  final String password;
  final String role;

  User(
      {required this.firstName,
      required this.lastName,
      required this.emailAddress,
      required this.password,
      required this.role})
      : userId = uuid.v4();
}
