enum Role {
  admin,
  member,
}

extension RoleExtension on Role {
  String get string {
    switch (this) {
      case Role.admin:
        return 'admin';
      case Role.member:
        return 'member';
    }
  }
}
