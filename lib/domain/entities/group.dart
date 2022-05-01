
import 'package:pimp_my_code/domain/entities/user.dart';

import 'enum/confidentiality.dart';

class Group {
  final String id;
  final String name;
  final String? description;
  final Confidentiality confidentiality;
  final User creator;
  final String? principalPictureUrl;

  Group(this.id,
      this.name,
      this.description,
      this.confidentiality,
      this.creator,
      this.principalPictureUrl);
}

