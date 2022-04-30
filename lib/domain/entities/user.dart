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
  final String principalPictureUrl;

  User(this.id,
      this.email,
      this.password,
      this.firstname,
      this.lastname,
      this.description,
      this.userRole,
      this.confidentiality,
      this.principalPictureUrl);
}

