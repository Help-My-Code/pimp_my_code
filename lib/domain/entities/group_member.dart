import 'package:pimp_my_code/domain/entities/enum/role.dart';
import 'package:pimp_my_code/domain/entities/group.dart';
import 'package:pimp_my_code/domain/entities/user.dart';

import 'enum/status.dart';

class GroupMember {
  final String groupMemberId;
  final Status membershipStatus;
  final Role userRole;
  final User? member;
  final Group group;

  GroupMember(
      {required this.groupMemberId,
      required this.membershipStatus,
      required this.userRole,
      required this.member,
      required this.group,});
}
