import 'package:pimp_my_code/domain/entities/enum/status.dart';
import 'package:pimp_my_code/domain/entities/user.dart';

class Follow {
  final String id;
  final Status followStatus;
  final User follower;
  final User user;

  Follow({
    required this.id,
    required this.followStatus,
    required this.follower,
    required this.user,
  });
}
