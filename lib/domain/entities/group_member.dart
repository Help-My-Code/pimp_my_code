import 'enum/role.dart';
import 'group.dart';
import 'user.dart';

import 'enum/status.dart';

class GroupMember {
  final String groupMemberId;
  final Status membershipStatus;
  final Role userRole;
  final User? member;
  final Group group;

  GroupMember({
    required this.groupMemberId,
    required this.membershipStatus,
    required this.userRole,
    required this.member,
    required this.group,
  });
}
