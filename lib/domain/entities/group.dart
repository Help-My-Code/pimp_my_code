import 'package:pimp_my_code/domain/entities/user.dart';

import 'enum/confidentiality.dart';

class Group {
  final String id;
  final String name;
  final String? description;
  final Confidentiality confidentiality;
  final User? creator;
  final String? principalPictureUrl;

  Group(
      {required this.id,
      required this.name,
      this.description,
      required this.confidentiality,
      required this.creator,
      this.principalPictureUrl});

  Group.withoutCreator(
      {required this.id,
        required this.name,
        this.description,
        required this.confidentiality,
        this.creator,
        this.principalPictureUrl});
}
