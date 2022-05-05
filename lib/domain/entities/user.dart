import 'enum/confidentiality.dart';
import 'enum/role.dart';

class User {
  final String id;
  final String email;
  final String password;
  final String firstname;
  final String lastname;
  final String? description;
  final Role userRole;
  final Confidentiality confidentiality;
  final String? principalPictureUrl;

  User({
    required this.id,
    required this.email,
    required this.password,
    required this.firstname,
    required this.lastname,
    this.description,
    required this.userRole,
    required this.confidentiality,
    this.principalPictureUrl,
  });
}
